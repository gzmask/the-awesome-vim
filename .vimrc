" Vundle required:
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'guns/vim-clojure-static'
Bundle 'amdt/vim-niji'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/paredit.vim'
Bundle 'tpope/vim-fireplace'
" original repos on github
" vim-scripts repos

filetype plugin indent on     " required!
au BufNewFile,BufRead *.ls set filetype=lisp

" colorscheme
set cuc cul
hi CursorColumn ctermbg=17
hi CursorLine cterm=none ctermbg=17
if has("gui_running")
  colorscheme torte
  set transparency=15
endif

" usability
let mapleader = ","
set viminfo=  " dont' use or save viminfo file
set expandtab
set lazyredraw
set shiftwidth=2
set softtabstop=2
set autoindent smartindent
set showcmd
set nobackup
set noswapfile
set ruler
set number
set incsearch
set ignorecase
set nocompatible
set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right
set wildmenu  " :e <Tab> wildmenu
set wildmode=list:longest "set wildmenu to list choice
autocmd BufEnter * silent! lcd %:p:h              " set working dir to current file
nmap <leader>r :doautocmd Syntax<CR> " reload syntax
nmap <leader>j <C-w>j
nmap <leader>h <C-w>h
nmap <leader>l <C-w>l
nmap <leader>k <C-w>k
