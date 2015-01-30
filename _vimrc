" Vundle required:
" cd $HOME 
" git clone https://github.com/gmarik/Vundle.vim.git vimfiles/bundle/Vundle.vim
" gvim _vimrc
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim/
let path='~/vimfiles/bundle'
call vundle#begin(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}
" My Bundles here:
Bundle 'guns/vim-clojure-static'
Bundle 'amdt/vim-niji'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-surround'
" original repos on github
" vim-scripts repos

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
au BufNewFile,BufRead *.ls set filetype=lisp
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




" colorscheme
set cuc cul
hi CursorColumn ctermbg=17
hi CursorLine cterm=none ctermbg=17
if has("gui_running")
  colorscheme torte
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
