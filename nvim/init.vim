set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'SirVer/UltiSnips'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

Plugin 'honza/vim-snippets'

Plugin 'lervag/vimtex'

set foldmethod=expr
set foldexpr=vimtex#fold#level(v:lnum)
set foldtext=vimtex#fold#text()

Plugin 'scrooloose/NERDTree'

autocmd vimenter * NERDTree

Plugin 'dylanaraps/wal.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

let g:airline_theme='minimalist'


Plugin 'JuliaEditorSupport/julia-vim'

Plugin 'tpope/vim-fugitive'









" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
colorscheme wal
set foldmethod=indent

let g:tex_flavour='latex'
autocmd FileType tex setlocal spell spelllang=en_us
set clipboard=unnamedplus
set number
inoremap <F2> <c-g>u<Esc>[s1z=`]a<c-g>u
command -nargs=+ Wolf :! wolframscript -code "<args>"
highlight Normal ctermbg=NONE
