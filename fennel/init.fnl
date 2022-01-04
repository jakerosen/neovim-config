(local lsp (require "lspconfig"))
(local cmp-lsp (require "cmp_nvim_lsp"))
(local status (require "lsp-status"))
(local cmp (require "cmp"))
(vim.cmd "augroup jakerosen\nautocmd!\naugroup END")


; on-hover : () -> io ()
;
; Call "textDocument/hover" and set the first meaningful line of the returned markdown (after filtering)
; as virtual text of the current line (namespace "hover"). Clears any previously set virtual text.
(local on-hover
  (fn []
    (when (= (. (vim.api.nvim_get_mode) "mode") "n")
      (local position (vim.lsp.util.make_position_params))

      ; extract the "meaningful head" of a list of (markdown) strings, where "meaningful" means not the empty
      ; string, and not beginning with ```
      (local meaningful-head
        (fn [lines]
          (var ret "")
          (var i 1)
          (while (<= i (length lines))
            (let [l (. lines i)]
              (if
                (or (= l "") (= 0 (vim.fn.match l "^```")))
                (set i (+ i 1))
                (do
                  (set i (+ (length lines) 1))
                  (set ret l)))))
          ret)
      )

      ; filter : string -> string
      ;
      ; Per the current buffer's filetype, return a function that mutates a line to set as virtual text, where
      ; the empty string means "don't annotate".
      ;
      ; For example, in Haskell we only care about lines that contain "::" (type signatures), because
      ; otherwise we'd end up annotating types with their own names on hover (for whatever reason,
      ; haskell-language-server currently returns "Bool" as the first line of a hover request, rather than
      ; something like "Bool :: Type")
      (local filter
        (match vim.bo.filetype
          "haskell"
            (fn [line] (if (= -1 (vim.fn.match line "::")) "" line))
          _ (fn [line] line))
      )

      ; highlight other occurrences of the thing under the cursor
      ; the colors are determined by LspReferenceText, etc. highlight groups
      (vim.lsp.buf.clear_references)
      (vim.lsp.buf.document_highlight)
      ; open diagnostics underneath the cursor
      (vim.diagnostic.open_float { "scope" "cursor" })
      ; try to put a type sig in the virtual text area
      (vim.lsp.buf_request 0 "textDocument/hover" position
        (fn [_err result _ctx _config]
          (when (and (not (= result nil)) (= (type result) "table"))
            (local namespace (vim.api.nvim_create_namespace "hover"))
            (local line (meaningful-head (vim.lsp.util.convert_input_to_markdown_lines result.contents)))
            (vim.api.nvim_buf_clear_namespace 0 namespace 0 -1)
            (when (not (= (filter line) ""))
              (vim.api.nvim_buf_set_virtual_text
                0
                namespace
                position.position.line
                [ [ (.. "∙ " line) "Comment" ] ] {})))))))
)

(local on-attach
  (lambda [client bufNum]
    (vim.cmd "augroup onAttachGroup\nautocmd!\naugroup END")
    ; Format on save
    (vim.cmd "autocmd onAttachGroup BufWritePre *.hs lua vim.lsp.buf.formatting_sync(nil, 1000)")

    (vim.cmd "highlight LspReference guifg=NONE guibg=#665c54 guisp=NONE gui=NONE cterm=NONE ctermfg=NONE ctermbg=59")
    (vim.cmd "highlight! link LspReferenceText LspReference")
    (vim.cmd "highlight! link LspReferenceRead LspReference")
    (vim.cmd "highlight! link LspReferenceWrite LspReference")

    (vim.api.nvim_buf_set_keymap bufNum "n" "<CR>" ":lua vim.lsp.buf.hover()<CR>" { "noremap" true "silent" true })
    (vim.api.nvim_buf_set_keymap bufNum "n" "<space>p" ":lua vim.lsp.buf.formatting()<CR>" { "noremap" true "silent" true })
    (vim.api.nvim_buf_set_keymap bufNum "n" "gd" ":lua vim.lsp.buf.definition()<CR>" { "noremap" true "silent" true })
    (vim.api.nvim_buf_set_keymap bufNum "n" "gD" ":lua vim.lsp.buf.declaration()<CR>" { "noremap" true "silent" true })
    (vim.api.nvim_buf_set_keymap bufNum "n" "<space>a" ":lua vim.lsp.buf.code_action()<CR>" { "noremap" true "silent" true })
    (vim.api.nvim_buf_set_keymap bufNum "n" "<up>" ":lua vim.diagnostic.goto_prev()<CR>" { "noremap" true "silent" true })
    (vim.api.nvim_buf_set_keymap bufNum "n" "<down>" ":lua vim.diagnostic.goto_next()<CR>" { "noremap" true "silent" true })

    (set vim.bo.omnifunc "v:lua.vim.lsp.omnifunc")
    (vim.cmd "autocmd onAttachGroup CursorMoved <buffer> lua require('init').onHover()")

    (status.on_attach client)
  )
)

(lsp.hls.setup
  { "cmd" ["haskell-language-server-wrapper" "--lsp" "-d" "-l" "/home/jake/hls.txt"]
    "settings" {
      "haskell" {
        "formattingProvider" "ormolu"
        "plugin" {
          "hlint" {
            "globalOn" false
          }
        }
        ; max number of completions sent to client at one time
        "maxCompletions" 40
      }
    }
    "on_attach" on-attach
    "capabilities" (cmp-lsp.update_capabilities
      (vim.lsp.protocol.make_client_capabilities)
    )
  }
)

(cmp.setup
  { "snippet" {
      "expand" (fn [args] ((. vim.fn "vsnip#anonymous") args.body))
    }
    "mapping" {
      "<C-Space>" (cmp.mapping (cmp.mapping.complete) ["i" "c"])
      "<C-y>" cmp.config.disable
      "<C-e>" (cmp.mapping {
        "i" (cmp.mapping.abort)
        "c" (cmp.mapping.close)
      })
      "<Tab>" (fn [fallback]
        (if (cmp.visible) (cmp.select_next_item) (fallback))
      )
      "<S-Tab>" (fn [fallback]
        (if (cmp.visible) (cmp.select_prev_item) (fallback))
      )
      "<CR>" (cmp.mapping.confirm { "select" false })
    }
    "sources" (cmp.config.sources [
      { "name" "nvim_lsp" }
      { "name" "vsnip" }
    ])
  }
)

(lambda lightline-status []
  (if (> (length (vim.lsp.buf_get_clients)) 0)
    (status.status)
    "")
)

(status.register_progress)

{ "onHover" on-hover }
