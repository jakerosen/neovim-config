" augroup jakerosen
"   autocmd!
" augroup END

" ------------------------------------------------------------------------------
" Plugins
" ------------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'chriskempson/base16-vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'ElmCast/elm-vim', { 'for': 'elm' }

" to organize
" Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular'

" Highlight yanks
Plug 'machakann/vim-highlightedyank'

" git changes
Plug 'mhinz/vim-signify'

" Multiple cursors for quick and dirty renaming. Very handy.
Plug 'terryma/vim-multiple-cursors'

" Swap the location of two selections. Occasionally useful.
Plug 'tommcdo/vim-exchange'

" Ghcide
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" highlight instances of characters when you use f
Plug 'unblevable/quick-scope'

" better bottom line
Plug 'itchyny/lightline.vim'

" show file names in light tabs (requires lightline)
Plug 'mengelbrecht/lightline-bufferline'

" Hotkey reminders
Plug 'liuchengxu/vim-which-key'

" Startup screen for vim
Plug 'mhinz/vim-startify'

" Remove highlighting when the cursor moves
Plug 'romainl/vim-cool'

" Renders a color pip when a hex code is encountered
Plug 'rrethy/vim-hexokinase'

" Highlights other copies of the word name that your cursor is over
Plug 'rrethy/vim-illuminate'

" improves ga functionality (shows character information)
Plug 'tpope/vim-characterize'

" git blame in line
Plug 'rhysd/git-messenger.vim'

call plug#end()

" ------------------------------------------------------------------------------
" Basic settings
" ------------------------------------------------------------------------------
" These are set by vim-plug
" syntax on
" filetype plugin indent off


" Colors
" [base16]
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
" colorscheme badwolf
" colorscheme monokai
" set background=dark " use dark theme (does not work with monokai)

" Remembers undo history of previous session
set undofile

" Smarter tab completion
set wildmenu
set wildmode=list:longest,full

" Tabs
set expandtab " convert tab key to spaces
set softtabstop=2
set shiftwidth=2 " shift width of 2
set shiftround " shifts to multiples of shift setting

" Indentation
set smartindent
set list " show notable whitespace
set linebreak " wrap whole word on line break

" Search
set ignorecase " ignore case on search
set smartcase " turns off ignore case when starting with capital

" Add a bit extra margin to the left
set foldcolumn=1

" Draw lines
set colorcolumn=81 " colors 81 column
set cursorline " sets cursor line

" Scroll
set scrolloff=10 " scroll screen when 10 characters from edge

" Turn off annoying backup functionality
set nobackup
set nowb
set noswapfile

" Misc
set autowrite " auto write when leaving buffer
set hidden " don't abandon out of sight buffer
set clipboard=unnamed,unnamedplus " yank into both clipboards
set lazyredraw " perform better when applying macros
set nofoldenable " never fold

" To organize
set icm=split " show ive command substitutions
set nojs      " insert one space after ., ?, ! characters
set noml      " disable modelines
set title     " sets filename as title at the top
set tm=500    " only wait .5s for key sequence to complete "

" ------------------------------------------------------------------------------
" Key mappings
" ------------------------------------------------------------------------------
" Remap VIM 0 to first non-blank character
map 0 ^

" ; to open command menu
map ; :

" turns off Ex mode
nmap Q <Nop>

" turns off command history buffer
nmap q: <Nop>

" moves through visual lines
nmap j gj
nmap k gk

" Big JK to move around (very fast and common)
nnoremap J <C-d>
nnoremap K <C-u>

" Wean myself off <C-d>, <C-u> (though I still have to use these hotkeys in
" pagers and such...)
nnoremap <C-d> <Nop>
nnoremap <C-u> <Nop>

" make Y behave like D, C
nnoremap Y y$

" After yank, leave cursor at the end of the highlight
vn y y`]

" Ctrl+S to search-and-replace
xn <C-s> :s//g<Left><Left>

" U to redo, since U is not very useful by default. I like having undo and
" redo so similar.
nn U <C-r>
" Weaning myself of <C-R> to redo
nn <C-r> <Nop>

" Ctrl-t to open a new tab
nnoremap <C-t> :tabnew<Enter>

" Don't highlight matches *and* jump at the same time; only highlight
nn * *``
nn # #``

" Follow >>/<< shifted text around with the cursor
nm >> <Plug>MyNmapLl
nm << <Plug>MyNmapHh
nn <silent> <Plug>MyNmapLl >>ll:cal repeat#set("\<Plug>MyNmapLl")<CR>
nn <silent> <Plug>MyNmapHh <<hh:cal repeat#set("\<Plug>MyNmapHh")<CR>

" Move left and right in tabs with Shift-hl
nnoremap <S-H> gT
nnoremap <S-L> gt

" map join to ,j so it is not orphaned
nn ,j m`J``
nn ,k km`J``

" Same as insert mode
xn J <C-d>
xn K <C-u>
xn <C-d> <Nop>
xn <C-u> <Nop>

" Move buffers with Ctrl+jk
nn <silent> <C-j> :bn<CR>
nn <silent> <C-k> :bp<CR>

" Simpler window movement with Ctrl+hjkl
" removed horizontal movement to not conflict with buffers
nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Delete the current buffer with Space-d, or quit vim if it's the only buffer
nn <expr> <silent> <Space>d len(getbufinfo({'buflisted': 1})) ==? 1 ? ":q\<CR>" : ":bw\<CR>"

" Unhighlight search with enter
nnoremap <silent> ? :nohlsearch<Enter>

" Save with tab
nnoremap <silent> <Tab> :w<Enter>

" tab complete suggestions
ino <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
ino <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" Jump forward
nn <C-f> <C-i>
" <C-o> is jump back (default binding)

" Make visual mode * work like normal mode *
vnoremap * y/<C-R>"<Enter>

" Space-p to format Haskell code
au FileType haskell nn <buffer> <silent> <Space>p m`!ipormolu<CR>``
au FileType haskell vn <buffer> <silent> <Space>p m`!ormolu<CR>``

" repld mitchell
nn <silent> <Space>s m`vip<Esc>:silent '<,'>w !repld-send<CR>``
nn <silent> <Space>S m`:silent w !repld-send<CR>``
vn <silent> <Space>s m`<Esc>:silent '<,'>w !repld-send<CR>``

" [commentary]
" Comment line(s)
nmap <Space>m <Plug>CommentaryLine
vmap <Space>m <Plug>Commentary

" [easymotion]
" Improved f,t movement
map gf <Plug>(easymotion-bd-f)
" map F <Plug>(easymotion-bd-fn)
" map t <Plug>(easymotion-bd-t)
" map T <Plug>(easymotion-bd-tn)

" old surround
" [surround]
" Surrround stuff with parens, quotes, etc
" nmap ds <Plug>Dsurround
" nmap cs <Plug>Csurround w
" nmap cS <Plug>Csurround W
" vmap S <Plug>VSurround

" new
" [surround]
" ds to delete surround and restore cursor position
" s to surround inner word and restore cursor position
" S to surround inner WORD and restore cursor position
" SS to surround current line restore cursor position
nm ds' mz<Plug>Dsurround'`zh
nm ds" mz<Plug>Dsurround"`zh
nm ds( mz<Plug>Dsurround)`zh
nm ds[ mz<Plug>Dsurround]`zh
nm ds{ mz<Plug>Dsurround}`zh
nm dsp mz<Plug>Dsurround)`zh
nm s' mz<Plug>Csurround w'`zl
nm s" mz<Plug>Csurround w"`zl
nm s( mz<Plug>Csurround w)`zl
nm s[ mz<Plug>Csurround w]`zl
nm s{ mz<Plug>Csurround w}`zl
nm sp mz<Plug>Csurround w)`zl
nm S' mz<Plug>Csurround W'`zl
nm S" mz<Plug>Csurround W"`zl
nm S( mz<Plug>Csurround W)`zl
nm S[ mz<Plug>Csurround W]`zl
nm S{ mz<Plug>Csurround W}`zl
nm Sp mz<Plug>Csurround W)`zl
nm SS' mz<Plug>Yssurround'`z
nm SS" mz<Plug>Yssurround"`z
nm SS( mz<Plug>Yssurround)`z
nm SS[ mz<Plug>Yssurround]`z
nm SS{ mz<Plug>Yssurround}`z
nm SSp mz<Plug>Yssurround)`z
" [vim-surround]
xm s' <Plug>VSurround'
xm s" <Plug>VSurround"
xm s( <Plug>VSurround)
xm s[ <Plug>VSurround]
xm s{ <Plug>VSurround}
xm sp <Plug>VSurround)



" [fzf]
nnoremap <Space>o :GFiles<Enter>
nnoremap <Space>O :Files<Enter>
nnoremap <Space>f :Ag <C-R><C-W><Enter>
vnoremap <Space>f y:Ag <C-R>"<Enter>
nnoremap <Space>k :Buffers<CR>

" [tabular]
" Space-a to align on the word under the cursor
nn <silent> <Space>a m`:execute "Tabularize /" . expand("<cWORD>")<CR>``<Paste>

" [exchange]
" X ("exchange") once to yank, X again to exchange with the first yank
" Manually make [exhange] replace 'w' with 'e', as vim does for e.g. 'c'
"
" XX to exchange-yank the whole line
nm Xw <Plug>(Exchange)e
nm XW <Plug>(Exchange)E
nm X <Plug>(Exchange)
nm XX <Plug>(ExchangeLine)

" x to exchange. vd and vx have the same default behavior (delete), so we
" don't lose any functionality here.
xm x <Plug>(Exchange)

" [nerdtree]
nnoremap <Space>n :NERDTreeToggle<Enter>

" Escape terminal mode with <Esc>
tno <Esc> <C-\><C-n>
tno <A-[> <Esc>

" " Steal back mappings for ([{'"` from AutoPairs. We have to use the VimEnter
" " autocmd trick because plugins are loaded after this file.
" autocmd VimEnter * ino <buffer> <silent> ( <C-R>=<SID>MyAutoPairsInsert('(')<CR>
" autocmd VimEnter * ino <buffer> <silent> [ <C-R>=<SID>MyAutoPairsInsert('[')<CR>
" autocmd VimEnter * ino <buffer> <silent> { <C-R>=<SID>MyAutoPairsInsert('{')<CR>
" autocmd VimEnter * ino <buffer> <silent> ' <C-R>=<SID>MyAutoPairsInsert("'")<CR>
" autocmd VimEnter * ino <buffer> <silent> " <C-R>=<SID>MyAutoPairsInsert('"')<CR>
" autocmd VimEnter * ino <buffer> <silent> ` <C-R>=<SID>MyAutoPairsInsert('`')<CR>

" [elm-vim]
" Space-p ("pretty ") to format Elm code
au FileType elm nn <buffer> <silent> <Space>p :ElmFormat<CR>


" ------------------------------------------------------------------------------
" Functions
" ------------------------------------------------------------------------------

function! <SID>StripTrailingWhitespace()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

" " Fix up AutoPairsInsert a bit to make it less annoying. When my cursor is up
" " against a character, I typically don't want a pair, and if I do, I'll just
" " type it myself.
" function! <SID>MyAutoPairsInsert(key)
"  " If we are on a space or at the end of the line, go ahead and auto-pair.
"  let c = getline('.')[col('.')-1]
"  if c == ' ' || c == a:key || col('$') <= col('.')
"    return AutoPairsInsert(a:key)
"  else
"    return a:key
"  endif
" endfunction

" [coc-nvim]
function! s:HandleEnter()
 if coc#util#has_float()
   call coc#util#float_hide()
 else
   call CocAction('doHover')
 endif
endfunction

" ------------------------------------------------------------------------------
" Autocommands
" ------------------------------------------------------------------------------

autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Strip trailing whitespace on save
autocmd BufWritePre * :call <SID>StripTrailingWhitespace()

" ------------------------------------------------------------------------------
" Filetype specific settings
" ------------------------------------------------------------------------------

" Escape to quit little annoying temporary buffers
au FileType fzf,ghcid nn <silent> <buffer> <Esc> :q<CR>

" Haskell convenience
" au FileType haskell ino ; :
" au FileType haskell ino : ;
au FileType haskell nn r; r:
au FileType haskell nn r: r;

" Unison commentary
au FileType unison setlocal commentstring=--\ %s

" C commentary
au FileType c setlocal commentstring=//\ %s

" C++ commentary
au FileType cpp setlocal commentstring=//\ %s

" php commentary
au FileType php setlocal commentstring=//\ %s

" mips commentary
au FileType asm setlocal commentstring=#\ %s


" ------------------------------------------------------------------------------
" Plugins
" ------------------------------------------------------------------------------

" [easymotion]
let g:EasyMotion_do_mapping = 0 " Don't set any key mappings automatically
let g:EasyMotion_smartcase = 1 " act like smartcase
let g:EasyMotion_use_upper = 1
let g:EasyMotion_keys = 'ASDGHKLQWERTYUIOPZXCVBNMFJ;'

" [fzf]
" If the buffer is already open in another tab or window, jump to it rather
" than replace the current buffer (which would open 2 copies)
let g:fzf_buffers_jump = 1

" [surround]
let g:surround_no_mappings = 1

" [haskell]
let g:haskell_indent_disable = 1

" " [auto pairs]
" let g:AutoPairsMapBS = 1 " Let auto pairs handle <backspace>
" let g:AutoPairsMapSpace = 1 " Let AutoPairs insert a space before closing pair
" " Don't let AutoPairs handle <CR>
" let g:AutoPairsMapCR = 0
" let g:AutoPairsCenterLine = 0
" " Disable a bunch of random key bindings
" let g:AutoPairsShortcutToggle = ''
" let g:AutoPairsShortcutFastWrap = ''
" let g:AutoPairsShortcutJump = ''
" let g:AutoPairsShortcutBackInsert = ''
" let g:AutoPairsMapCh = 0

" [highlightedyank]
let g:highlightedyank_highlight_duration = 500 " highlight yank for 500ms
let g:highlightedyank_max_lines = 50

" [signify]
let g:signify_sign_change = 'Δ'
let g:signify_sign_delete = '-'
" I only use git, so only bother integrating with it (performance win!)
let g:signify_vcs_list = [ 'git' ]

" [multiple-cursors]
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_start_word_key = '<C-n>'
" let g:multi_cursor_select_all_word_key = '<A-n>'
" let g:multi_cursor_start_key = 'g<C-n>'
" let g:multi_cursor_select_all_key = 'g<A-n>'
let g:multi_cursor_next_key = '<C-n>'
let g:multi_cursor_prev_key = '<C-p>'
" let g:multi_cursor_skip_key = '<C-x>'
let g:multi_cursor_quit_key = '<Esc>'

" [exchange]
" Don't make any key mappings
let g:exchange_no_mappings = 1

" [elm]
let g:elm_setup_keybindings = 0 " Don't make any key mappings
let g:elm_format_autosave = 0 " Don't run elm-format on save

" [ghcide coc]
nm <silent> gd <Plug>(coc-definition)
nn <silent> <Enter> :call <SID>HandleEnter()<CR>

" Optional hotkeys -- add as wanted
" <Left>/<Right> to jump around warnings/errors (annoying that it's only
" buffer-local)
" nm <silent> <Left> <Plug>(coc-diagnostic-prev)
" nm <silent> <Right> <Plug>(coc-diagnostic-next)
" " gd to go to definition of thing under cursor
" " Also <Del> (trying it out since it's one key)
" nm <silent> gd <Plug>(coc-definition)
" nm <silent> <Del> <Plug>(coc-definition)
" " <Enter> to show type of thing under cursor
" nn <silent> <Enter> :call <SID>HandleEnter()<CR>
" " <Space>i to open quickfix
" nn <silent> <Space>i :CocFix<CR>
" " Backspace to open all warnings/errors in a list
" nn <silent> <BS> :CocList diagnostics<CR>


" ------------------------------------------------------------------------------
" Abbreviations
" ------------------------------------------------------------------------------

ia zalpha α
ia zbeta β
ia zchi χ
ia zdelta δ
ia zepsilon ε
ia zeta η
ia zgamma γ
ia ziota ι
ia zkappa κ
ia zlambda λ
ia zmu μ
ia znu ν
ia zomega ω
ia zphi φ
ia zpi π
ia zpsi ψ
ia zrho ρ
ia zsigma σ
ia ztau τ
ia ztheta θ
ia zupsilon υ
ia zxi ξ
ia zzeta ζ

ia zDelta Δ
ia zGamma Γ
ia zLambda Λ
ia zOmega Ω
ia zPhi Φ
ia zPi Π
ia zPsi Ψ
ia zSigma Σ
ia zTheta Θ
ia zXi Ξ

ia zforall ∀
ia zexists ∃
ia zbottom ⊥

ia zA 𝔸
ia zB 𝔹
ia zC ℂ
ia zD 𝔻
ia zE 𝔼
ia zF 𝔽
ia zG 𝔾
ia zH ℍ
ia zI 𝕀
ia zJ 𝕁
ia zK 𝕂
ia zL 𝕃
ia zM 𝕄
ia zN ℕ
ia zO 𝕆
ia zP ℙ
ia zQ ℚ
ia zR ℝ
ia zS 𝕊
ia zT 𝕋
ia zU 𝕌
ia zV 𝕍
ia zW 𝕎
ia zX 𝕏
ia zY 𝕐
ia zZ ℤ
ia zzgamma ℽ
ia zzGamma ℾ
ia zzpi ℼ
ia zzPi ℿ

ia zeq ≡
ia zne ≠
ia zle ≤
ia zge ≥
ia zdot ∘
ia znot ¬
ia zand ∧
ia zor ∨
ia zempty ∅
ia zunion ∪
ia zintersect ∩

"""""""""""""""""""""'''
" " Briefly highlight yanks
" autocmd jakerosen TextYankPost * silent! lua vim.highlight.on_yank {higroup="Visual", timeout=600}

source 'unicode.vim'

" inner/around number text objects (with forward-seeking behavior)
" 123 123.456 0b1010 0xff
let s:number_regex = '0b[01]\+\|0x\x\+\|\d\+\(\.\d\+\)\='
function! s:innerNumberTextObject()
  if (!search(s:number_regex, 'ceW'))
    return
  endif
  normal! v
  call search(s:number_regex, 'bcW')
endfunction
function! s:aroundNumberTextObject()
  if (!search(s:number_regex, 'ceW'))
    return
  endif
  call search('\%' . (virtcol('.')+1) . 'v\s*', 'ceW')
  normal! v
  call search(s:number_regex, 'cb')
  call search('\s*\%' . virtcol('.') . 'v', 'bW')
endfunction
vnoremap <silent> in :<C-u>call <SID>innerNumberTextObject()<cr>
onoremap <silent> in :<C-u>call <SID>innerNumberTextObject()<cr>
xnoremap <silent> an :<C-u>call <SID>aroundNumberTextObject()<cr>
onoremap <silent> an :<C-u>call <SID>aroundNumberTextObject()<cr>
