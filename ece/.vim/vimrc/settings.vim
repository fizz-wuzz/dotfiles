colorscheme molokai

"get rid of uneven background color
set t_ut=
"remove bells
set vb
set t_vb=
"search highlighting
set hls
"line number
set number
"current line
set cursorline
"command line completion
set wildmenu
"wrap text at border
"only affects displayed text
set wrap 
"number of colors
set t_Co=256
"line and col of cursor
set ruler
"allow mouse usage
set mouse=a
"allow hidden buffers
set hidden
"tab = 2 spaces
set tabstop=2
" >> and << etc
set shiftwidth=2
"editing mode tabs
set softtabstop=2
"shiftwidth for start of line
set smarttab
"use spaces
set expandtab
"outo read when file is changed externally
set autoread
"show matches so far
set incsearch
"remember stuff
set history=1000
"case handling
set ignorecase
set smartcase
"terminal name
set title

filetype on
filetype indent on
filetype plugin on
syntax on

"matching
runtime macros/matchit.vim

execute pathogen#infect()
