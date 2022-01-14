" Call :PlugInstall to install plugins
call plug#begin()

Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go'

call plug#end()

" Make sure makefiles always use tabs
if has("autocmd")
    " Use filetype detection and file-based automatic indenting.
    filetype plugin indent on
    " Use actual tab chars in Makefiles.
    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif

set tabstop=2 
set softtabstop=2 expandtab 
set shiftwidth=2 smarttab
