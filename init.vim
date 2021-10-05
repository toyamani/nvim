" load setting file about plugins & keymaps
runtime ./plugins.vim
runtime ./keymaps.vim
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif
if has("win32") || has("win64")
  runtime ./windowsos.vim
endif
" TODO: Fix OS clipboard setting
set clipboard+=unnamed,unnamedplus

" set colors
syntax enable
if exists("&termguicolors") && exists("&winblend")
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=10
  let g:material_theme_style = 'palenight'
  colorscheme material
endif

"
" Encode
"
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac

"
" Indent
"
set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set shiftwidth=2

"
" Search
"
set incsearch
set ignorecase
set smartcase
set hlsearch

"
" Display
"
set number
set nowrap
set showmatch

"
" Command mode
"
set wildmenu " コマンドモードの補完
set history=1000 " 保存するコマンド履歴の数
