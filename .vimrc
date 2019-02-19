set tabstop=4     " TAB becomes X spaces 
set softtabstop=4 " TAB becomes X spaces in Vim
set number " Turn on line numbers
set nobk		  " Don't create backup files
set ai			  " Turn on auto indentation
set si			  " Turn on smart indent
set ru			  " Turn on the ruler
map <C-n> :NERDTreeToggle<CR>
" CrtP use FZF
nnoremap <C-p> :Files<Cr>

source ~/.vim/plugin/plugins.vim


