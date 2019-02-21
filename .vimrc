set tabstop=4     " TAB becomes X spaces 
set softtabstop=4 " TAB becomes X spaces in Vim
set number " Turn on line numbers
set nobk		  " Dont create backup files
set ai			  " Turn on auto indentation
set si			  " Turn on smart indent
set ru			  " Turn on the ruler

" CrtP use FZ
nnoremap <C-p> :Files<CR>

" move line with Alt + j/k
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

source ~/.vim/plugin/plugins.vim
source ~/.vim/plugin/nerdtree.vim


