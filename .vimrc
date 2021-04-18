set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" NerdTree
Plugin 'scrooloose/nerdtree'

"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'itchyny/lightline.vim' "{{{

let g:lightline = {
    \ 'colorscheme': 'jellybeans',
    \ 'component': {
    \   'readonly': '%{&readonly?"✖":""}',
    \ },
    \ 'active': {
    \   'right': [['lineinfo'], ['percent']],
    \ },
    \ }

"}}}


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


set background=dark
set nu

" Key bindings
map <tab> :tabnext<enter>
map <c-tab> :tabprevious<enter>

" MVogelgesang

set t_Co=256
set omnifunc=syntaxcomplete#Complete
set completeopt=menu

" General
" set showmatch       " Show matching parentheses
set nocompatible    " Disable vi compatibility
set modeline        " Enable modeline
set noshowcmd
set nocursorline    " Do not highlight cursor line
set nocursorcolumn  " Do not highlight current cursor column
set ruler           " Show cursor position
set laststatus=2    " Show status line
set noerrorbells    " No beeps
set history=1000    " Maximum history
set wildmenu        " Tab completion
set wildignore+=*/.git/*,*/.bzr/*,*~,*/build/*,*.pyc
set hidden          " Allow buffers to be hidden
set scrolloff=2     " At least two lines and ...
set sidescrolloff=2 " two columns context
set mouse=a         " Mouse support
set ttyfast
set ttimeoutlen=0   " Timeout for keycodes, esp. <Esc>
set dir=~/.vim      " Location for .swp files
let mapleader = "\<Space>"

" Searching
set ignorecase      " Case insensitive search
set smartcase       " Ignore ignorecase
set hlsearch        " Show search results
set wrapscan        " Continue search at the top
set incsearch       " Incremental search

" Textformatting, indenting, tabs
set textwidth=80    " Yay, history!
set autoindent      " ...
set smartindent     " ...
set tabstop=4       " Number of spaces per tab
set shiftwidth=4    " Default number of spaces for >> and <<
set softtabstop=4   " Number of spaces per tab
set expandtab       " Spaces instead of tabs
set smarttab        " Add/remove spaces instead of tabs
set linebreak       " Break lines nicer
set number          " Show line numbers
set listchars=tab:»\ ,trail:·,eol:¬
set fillchars=fold:·
set backspace=indent,eol,start

set foldenable
set foldmethod=marker
syntax on

" Add vertical line after 80 chars to fullfill the coding guideline
highlight ColorColumn ctermbg=gray
set cc=80

" Nerd Tree (07.06.2018)
map <C-n> :NERDTreeToggle<CR>

" Johannes Python setting (tabs > spaces)
autocmd Filetype python setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=-1
