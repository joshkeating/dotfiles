
" Frankenstein vim config
" See https://github.com/amix/vimrc for more

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible 
set showcmd

set laststatus=2
" going to disable themes for awhile, preformance issues
"execute pathogen#infect()
"let g:airline_powerline_fonts = 1

"if !exists('g:airline_symbols')
"	let g:airline_symbols = {}
"endif

"let g:airline_symbols.linenr = ''
"let g:airline_theme="luna"
" Set to auto read when a file is changed from the outside
set autoread

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Height of the command bar
set cmdheight=1

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" how matching brackets when text indicator is over them
set showmatch

" Add a bit extra margin to the left
set foldcolumn=1

"enable use of the mouse in vim
set mouse=a

"turn on realtive numbers
set relativenumber
set number

" Searching
set hlsearch            " highlight matches
set incsearch           " search as characters are entered

" Spaces and Tabs
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces

" Disable fold column
set foldcolumn=0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax enable

" Enable 256 color support
set t_Co=256

" Set colorscheme
colorscheme default

" sets background
set background=dark

" cursorline highlighting
set cursorline
hi CursorLine  cterm=NONE ctermbg=238 ctermfg=NONE

" numberline colors
highlight LineNr ctermfg=grey
highlight CursorLineNr ctermfg=cyan

" statusline
hi StatusLine ctermbg=black ctermfg=grey


