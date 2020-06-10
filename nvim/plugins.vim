" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'SirVer/UltiSnips'

let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<C-Space>"
let g:UltiSnipsJumpBackwardTrigger="<C-Shift-Space>"
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

Plugin 'junegunn/fzf'

Plugin 'junegunn/fzf.vim'

" Plugin 'ycm-core/youcompleteme'





" Plugin 'neoclide/coc.nvim'
" let g:coc_node_path='/usr/bin/node'





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
"
" let s:lsp='$HOME/progrepos/lsp-examples'
" 
" let g:julia_cmdline = ['julia', '--startup-file=no', '--history-file=no', '-e', '
" \       using LanguageServer;
" \       using Pkg;
" \       import StaticLint;
" \       import SymbolServer;
" \       env_path = dirname(Pkg.Types.Context().env.project_file);
" \       debug = false;
" \
" \       server = LanguageServer.LanguageServerInstance(stdin, stdout, debug, env_path, "", Dict());
" \       server.runlinter = true;
" \       run(server);
" \   ']
" 
" let g:ycm_language_server = [
"   \   { 'name': 'julia',
"   \     'filetypes': [ 'julia' ],
"   \     'project_root_files': [ 'Project.toml' ],
"   \     'cmdline': g:julia_cmdline
"   \   },
"   \]
