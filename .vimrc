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

" about search
set hlsearch
set ignorecase
set incsearch

" about ident
set softtabstop=2
set shiftwidth=2
set expandtab
set showtabline=2

" about window
set splitbelow
set splitright

" about color
syntax on

try
  colorscheme darkblue
catch
endtry

" about filetype
filetype on
filetype indent on
filetype plugin on 


" key mapping 
let mapleader = " "
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
