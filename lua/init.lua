local lsp = require("lspconfig")
local cmp_lsp = require("cmp_nvim_lsp")
local status = require("lsp-status")
local cmp = require("cmp")
vim.cmd("augroup jakerosen\nautocmd!\naugroup END")
local on_hover
local function _1_()
  if (vim.api.nvim_get_mode().mode == "n") then
    local position = vim.lsp.util.make_position_params()
    local meaningful_head
    local function _2_(lines)
      local ret = ""
      local i = 1
      while (i <= #lines) do
        local l = lines[i]
        if ((l == "") or (0 == vim.fn.match(l, "^```"))) then
          i = (i + 1)
        else
          i = (#lines + 1)
          ret = l
        end
      end
      return ret
    end
    meaningful_head = _2_
    local filter
    do
      local _4_ = vim.bo.filetype
      if (_4_ == "haskell") then
        local function _5_(line)
          if (-1 == vim.fn.match(line, "::")) then
            return ""
          else
            return line
          end
        end
        filter = _5_
      elseif true then
        local _ = _4_
        local function _7_(line)
          return line
        end
        filter = _7_
      else
        filter = nil
      end
    end
    vim.lsp.buf.clear_references()
    vim.lsp.buf.document_highlight()
    vim.diagnostic.open_float({scope = "cursor"})
    local function _9_(_err, result, _ctx, _config)
      if (not (result == nil) and (type(result) == "table")) then
        local namespace = vim.api.nvim_create_namespace("hover")
        local line = meaningful_head(vim.lsp.util.convert_input_to_markdown_lines(result.contents))
        vim.api.nvim_buf_clear_namespace(0, namespace, 0, -1)
        if not (filter(line) == "") then
          return vim.api.nvim_buf_set_virtual_text(0, namespace, position.position.line, {{("\226\136\153 " .. line), "Comment"}}, {})
        else
          return nil
        end
      else
        return nil
      end
    end
    return vim.lsp.buf_request(0, "textDocument/hover", position, _9_)
  else
    return nil
  end
end
on_hover = _1_
local on_attach
local function _13_(client, bufNum)
  _G.assert((nil ~= bufNum), "Missing argument bufNum on fennel/init.fnl:72")
  _G.assert((nil ~= client), "Missing argument client on fennel/init.fnl:72")
  vim.cmd("autocmd jakerosen BufWritePre *.hs lua vim.lsp.buf.formatting_sync(nil, 1000)")
  vim.cmd("highlight LspReference guifg=NONE guibg=#665c54 guisp=NONE gui=NONE cterm=NONE ctermfg=NONE ctermbg=59")
  vim.cmd("highlight! link LspReferenceText LspReference")
  vim.cmd("highlight! link LspReferenceRead LspReference")
  vim.cmd("highlight! link LspReferenceWrite LspReference")
  vim.api.nvim_buf_set_keymap(bufNum, "n", "<CR>", ":lua vim.lsp.buf.hover()<CR>", {noremap = true, silent = true})
  vim.api.nvim_buf_set_keymap(bufNum, "n", "<space>p", ":lua vim.lsp.buf.formatting()<CR>", {noremap = true, silent = true})
  vim.api.nvim_buf_set_keymap(bufNum, "n", "gd", ":lua vim.lsp.buf.definition()<CR>", {noremap = true, silent = true})
  vim.api.nvim_buf_set_keymap(bufNum, "n", "gD", ":lua vim.lsp.buf.declaration()<CR>", {noremap = true, silent = true})
  vim.api.nvim_buf_set_keymap(bufNum, "n", "<space>a", ":lua vim.lsp.buf.code_action()<CR>", {noremap = true, silent = true})
  vim.api.nvim_buf_set_keymap(bufNum, "n", "<up>", ":lua vim.diagnostic.goto_prev()<CR>", {noremap = true, silent = true})
  vim.api.nvim_buf_set_keymap(bufNum, "n", "<down>", ":lua vim.diagnostic.goto_next()<CR>", {noremap = true, silent = true})
  vim.bo.omnifunc = "v:lua.vim.lsp.omnifunc"
  vim.cmd("autocmd jakerosen CursorMoved <buffer> lua require('init').onHover()")
  return status.on_attach(client)
end
on_attach = _13_
lsp.hls.setup({settings = {haskell = {formattingProvider = "ormolu", plugin = {hlint = {globalOn = false}}, maxCompletions = 40}}, on_attach = on_attach, capabilities = cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())})
local function _14_(args)
  return vim.fn["vsnip#anonymous"](args.body)
end
local function _15_(fallback)
  if cmp.visible() then
    return cmp.select_next_item()
  else
    return fallback()
  end
end
local function _17_(fallback)
  if cmp.visible() then
    return cmp.select_prev_item()
  else
    return fallback()
  end
end
cmp.setup({snippet = {expand = _14_}, mapping = {["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), {"i", "c"}), ["<C-y>"] = cmp.config.disable, ["<C-e>"] = cmp.mapping({i = cmp.mapping.abort(), c = cmp.mapping.close()}), ["<Tab>"] = _15_, ["<S-Tab>"] = _17_, ["<CR>"] = cmp.mapping.confirm({select = true})}, sources = cmp.config.sources({{name = "nvim_lsp"}, {name = "vsnip"}})})
local function lightline_status()
  if (#vim.lsp.buf_get_clients() > 0) then
    return status.status()
  else
    return ""
  end
end
status.register_progress()
return {onHover = on_hover}
