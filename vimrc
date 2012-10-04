" This must be first, because it changes other options as side effect
set nocompatible

call pathogen#infect()
call pathogen#helptags()

set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set nobackup
set noswapfile

" Filetype plugins
filetype plugin indent on

" Override <leader> defaults
let mapleader = ","

" Set the whitespace characters
set listchars=tab:>-,trail:~,eol:$

" Toggle hlsearch (highlight search matches)
nmap <leader>l :set hls!<cr>

" Shortcut to rapidly toggle 
" Fast save and quit
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>

" Map NERDTreeToggle to convenient key
nmap <leader>n :NERDTreeToggle<cr>

" NERDTree config
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\env','\.vim$', '\~$', '\.pyc$', '\.swp$', '\.egg-info$', '^dist$', '^build$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeHightlightCursorline=1
