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
set encoding=utf-8 " ファイル読み込み時の文字コード
set fileencoding=utf-8 " 保存時の文字コード
set fileencodings=ucs-boms,utf-8,euc-jp,cp932 " 読み込み時の文字コードの自動判別. 左側が優先される
set fileformats=unix,dos,mac " 改行コードの自動判別. 左側が優先される

"
" Indent
"
set expandtab " タブ入力を複数の空白入力に置き換える
set tabstop=2 " 画面上でタブ文字が占める幅
set softtabstop=2 " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent " 改行時に前の行のインデントを継続する
set smartindent " 改行時に前の行の構文をチェックし次の行のインデントを増減する
set shiftwidth=2 " smartindentで増減する幅

"
" Search
"
set incsearch " インクリメンタルサーチ. １文字入力毎に検索を行う
set ignorecase " 検索パターンに大文字小文字を区別しない
set smartcase " 検索パターンに大文字を含んでいたら大文字小文字を区別する
set hlsearch " 検索結果をハイライト

"
" Display
"
set number " 行番号を表示
set showmatch " 括弧の対応関係を一瞬表示する
set nowrap " 折返ししない

"
" Command mode
"
set wildmenu " コマンドモードの補完
set history=1000 " 保存するコマンド履歴の数
