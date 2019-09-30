set tabstop=4     " TAB becomes X spaces 
set softtabstop=2 " TAB becomes X spaces in Vim
set shiftwidth=2  " TAB 
set expandtab
set pastetoggle=<F11> " paste/nopaste
syntax on     " Enable syntax highlighting
set number " Turn on line numbers
set nobk		  " Dont create backup files
set ai			  " Turn on auto indentation
set si			  " Turn on smart indent
set ru			  " Turn on the ruler
set bs=2          " turn backspace on insert mode
set noshowmode	  " hide default mode text
set nocompatible  " ward off unexpected things from distro
set wildmenu      " better cmd-line completion
set backspace=indent,eol,start " Allow bs over autoindent, line breaks & start of insert action

" Use clipboard as default register
set clipboard=unnamed
set clipboard=unnamedplus

" esc in insert mode
inoremap jj <esc>
inoremap jj <esc>

" esc in command mode
cnoremap kj <C-C>
cnoremap jk <C-C>

" CrtP use FZ
nnoremap <C-p> :Files<CR>

" move line with Alt + j/k
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" move line with Alt + j/k
execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
nnoremap <M-j> :m .+1<CR>==
nnoremap <M-k> :m .-2<CR>==
inoremap <M-j> <Esc>:m .+1<CR>==gi
inoremap <M-k> <Esc>:m .-2<CR>==gi
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv


"Color scheme
colorscheme desert

if &term =~ "ansi"
  let &t_ti = "\<Esc>[?47h"
  let &t_te = "\<Esc>[?47l"
endif

"powerline
"set rtp+=/Users/hito/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/
set laststatus=2
"set t_Co=256

source ~/.vim/plugin/plugins.vim
source ~/.vim/plugin/nerdtree.vim


