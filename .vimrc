" Plug
call plug#begin()
  Plug 'wakatime/vim-wakatime'
  Plug 'ap/vim-css-color'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'preservim/nerdtree'
call plug#end()

" appearance
set nu
set clipboard=unnamed
set cursorline
set noswapfile
set ruler
set wrap
set linebreak
set mouse=a
set showcmd
set scrolloff=3
set smartcase
set noshowmode

" Enable status bar color
set t_Co=256

" about search
set hlsearch
set ignorecase
set incsearch

" about ident
set softtabstop=4
set shiftwidth=4
set expandtab
set showtabline=4

" Always show the status line
set laststatus=2

" about window
set splitbelow
set splitright

" about color
syntax on
colorscheme darkblue

" about filetype
filetype on
filetype indent on
filetype plugin on

" file encoding
set encoding=utf-8
scriptencoding utf-8

" key mapping
let mapleader = "\<Space>"
inoremap jj <Esc>
nnoremap <C-k> gt
nnoremap <C-j> gT
nnoremap H ^
nnoremap L g_

" auto command
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
autocmd BufWritePre * :%s/\s\+$//e

if executable("python3")
  autocmd BufRead,BufNewFile *.py noremap <F5> :w !python3<Enter>
else
  autocmd BufRead,BufNewFile *.py noremap <F5> :echo "you need to install python first!"
endif

" =================
" airline plug
" =================
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1

let g:airline_theme='molokai'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'


" nerdtree plug
nnoremap <silent> <F2> :NERDTreeToggle<Enter>
let NERDTreeMinimalUI = 1
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
