"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists(“s:std_in”) | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>

"Show hidden files
let NERDTreeShowHidden=1

"Closes nerdtree when open file
"let NERDTreeQuitOnOpen = 1

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable="+" 
let g:NERDTreeDirArrowCollapsible="~"
