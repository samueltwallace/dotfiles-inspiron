nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
noremap <M-l> <C-W>>
nnoremap <M-k> <C-W>-
nnoremap <M-j> <C-W>+
nnoremap <M-h> <C-W><
inoremap <F2> <c-g>u<Esc>[s1z=`]a<c-g>u
command -nargs=+ Wolf :! wolframscript -code "<args>"
command -nargs=+ WolfTeX :! wolframscript -code "<args>" -format TeX
