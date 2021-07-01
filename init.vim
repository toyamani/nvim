"
" 文字エンコード
"
set encoding=utf-8 " ファイル読み込み時の文字コード
set fileencoding=utf-8 " 保存時の文字コード
set fileencodings=ucs-boms,utf-8,euc-jp,cp932 " 読み込み時の文字コードの自動判別. 左側が優先される
set fileformats=unix,dos,mac " 改行コードの自動判別. 左側が優先される

"
" インデント
"
set expandtab " タブ入力を複数の空白入力に置き換える
set tabstop=2 " 画面上でタブ文字が占める幅
set softtabstop=2 " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent " 改行時に前の行のインデントを継続する
set smartindent " 改行時に前の行の構文をチェックし次の行のインデントを増減する
set shiftwidth=2 " smartindentで増減する幅

"
" 検索
"
set incsearch " インクリメンタルサーチ. １文字入力毎に検索を行う
set ignorecase " 検索パターンに大文字小文字を区別しない
set smartcase " 検索パターンに大文字を含んでいたら大文字小文字を区別する
set hlsearch " 検索結果をハイライト

"
" 表示
"
set number " 行番号を表示
set showmatch " 括弧の対応関係を一瞬表示する
set nowrap " 折返ししない

"
" 移動
"
" set whichwrap=b,s,h,l,<,>,[,],~ " カーソルの左右移動で行末から次の行の行頭への移動が可能になる
nnoremap j gj
nnoremap k gk
nnoremap <S-h> ^
nnoremap <S-l> $

"
" インサートモード
"
inoremap jj <esc>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>^

"
" 補完
"
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap [ []<ESC>i
inoremap [<Enter> []<Left><CR><ESC><S-o>

"
" コマンドモード
"
set wildmenu " コマンドモードの補完
set history=5000 " 保存するコマンド履歴の数

"
" vim-airline setting
" 
let g:airline_theme = 'bubblegum'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"
" Preview Markdown
"
let g:preview_markdown_parser= 'glow'

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" dein auto install
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath
" reload plugin & create cache
let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_file)
  call dein#end()
  call dein#save_state()
endif
" auto install not installed plugins on startup.
if has('vim_starting') && dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable
"End dein Scripts-------------------------

