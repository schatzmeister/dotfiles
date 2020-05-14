" Thanks to Anish, Jon and Jose from MIT for providing
" the basis of my vimrc in their missing semester course.

" Switches of vi compatibility for more options.
set nocompatible

" Disable the default Vim startup message.
set shortmess+=I

" 256 colors mode on terminal
set t_Co=256

" Syntax highlighting.
syntax on

" Highlight cursorline.
hi CursorLine cterm=NONE ctermbg=8 ctermfg=NONE

" Line numbers.
set number
set relativenumber
" Color for the lineno background
hi LineNr ctermbg=236 

" Always show the status line.
set laststatus=2

" Add an alternative mapping for Escape.
imap <C-Space> <Esc>

" Nicer backspace.
set backspace=indent,eol,start

" In normal mode, <Enter> produces a new blank line
" instead of moving to the next line.
" <S-Enter> to insert above.
nmap <Enter> o<Esc>
nmap <S-Enter> O<Esc>

" Unbind Ex mode key.
nmap Q <Nop> 

" CtrlP invokation.
let g:ctrlp_map = '<c-p>'

" Change tabs.
set tabstop=4
set shiftwidth=4
" set expandtab " For converting tabs to spaces.

" Allow hidden buffers.
set hidden

" Smart(er) search.
set ignorecase
set smartcase
set incsearch

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support.
set mouse+=a

" Prevent usage of arrow keys.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
