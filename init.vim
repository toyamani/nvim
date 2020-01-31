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
inoremap <C-e> <Left>
inoremap <C-f> <Right>
inoremap <C-h> <left><Delete>

"
" 補完
"
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
"
" コマンドモード
"
set wildmenu " コマンドモードの補完
set history=5000 " 保存するコマンド履歴の数



"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml',     {'lazy':0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml',{'lazy':1})
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
"
" If you want to install not installed plugins on startup.
"
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

