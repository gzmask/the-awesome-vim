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
Bundle 'tpope/vim-fireplace'
" original repos on github
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
" rake make in bundle/command-t
Bundle 'git://git.wincent.com/command-t.git' 

filetype plugin indent on     " required!

" colorscheme
set cuc cul
hi CursorColumn ctermbg=17
hi CursorLine cterm=none ctermbg=17
if has("gui_running")
  colorscheme desert
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
nmap <leader>j <C-d>
nmap <leader>h <C-u>
