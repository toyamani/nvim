" Nomal mode
nnoremap j gj
nnoremap k gk
nnoremap <S-h> ^
nnoremap <S-l> $
nnoremap Y y$
nnoremap O :<C-u>call append(expand('.'), '')<Cr>j
nnoremap <C-a> gg<S-v>G

" Insert mode
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>^
inoremap <C-a> <Del>
