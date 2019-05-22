set tabstop=4     " TAB becomes X spaces 
set softtabstop=4 " TAB becomes X spaces in Vim
set number " Turn on line numbers
set nobk		  " Dont create backup files
set ai			  " Turn on auto indentation
set si			  " Turn on smart indent
set ru			  " Turn on the ruler
set bs=2          " turn backspace on insert mode
set noshowmode	  " hide default mode text

" CrtP use FZ
nnoremap <C-p> :Files<CR>

" move line with Alt + j/k
"nnoremap <A-j> :m .+1<CR>==
"nnoremap <A-k> :m .-2<CR>==
"inoremap <A-j> <Esc>:m .+1<CR>==gi
"inoremap <A-k> <Esc>:m .-2<CR>==gi
"vnoremap <A-j> :m '>+1<CR>gv=gv
"vnoremap <A-k> :m '<-2<CR>gv=gv

nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv


"Color scheme
colorscheme ron

if &term =~ "ansi"
  let &t_ti = "\<Esc>[?47h"
  let &t_te = "\<Esc>[?47l"
endif

"powerline
set rtp+=/Users/hito/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

source ~/.vim/plugin/plugins.vim
source ~/.vim/plugin/nerdtree.vim


