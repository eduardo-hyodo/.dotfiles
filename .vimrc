""" Auto install Plugin Manager""""""""""""""""""""""""""""""""""""""""

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Plug List 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
" ===for search===
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
 Plug 'junegunn/fzf.vim'

" === for typing/editing ===
 Plug 'jiangmiao/auto-pairs'
 Plug 'sheerun/vim-polyglot'
" Plug 'vim-python/python-syntax'
 Plug 'tmhedberg/SimpylFold'

" ===for visual===
 Plug 'scrooloose/nerdtree'
 Plug 'airblade/vim-gitgutter'
 Plug 'itchyny/lightline.vim'
 Plug 'Rigellute/shades-of-purple.vim'
 Plug 'ghifarit53/tokyonight-vim'

 " ===for Python ===
 Plug 'davidhalter/jedi-vim' "Autocomplete, goto definition, show docs
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""   Setup Vim config 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible		" escape legacy vim stuff
filetype plugin indent on	" reconize file type and tunr identantion	
set foldmethod=indent		" fold with identation 
set foldlevel=99		" number of fold nested 
set number 			" display line number on the left
syntax on 			" turn highlight of syntax
set spell			" enable spell correction
set laststatus=2 		" turn on status bar
set ai				" turn on auto indentation
set si				" turn on smart indent
set ru				" turn on the ruler
set bs=2			" turn backspace on insert mode
set sb				" when split open on below
set spr				" when split open on right
set hls 			" hightlight  words from search
set ignorecase			      " igrnore capital case on search
set noshowmode			      " hide default mode text unde powerline
set wildmenu          		" better cmd-line completion
set ttyfast           		" improve redraw of windows
set ttimeoutlen=10    		" keycode delays timeout
set timeoutlen=500    		" Mapping delays timeout
set updatetime=100    		" Time to refresh scroll- improv markdown preview
set hidden            		" Allow hidden buffers, don't limit to 1 file per window/split
set cursorline        		" show line on curso
set encoding=UTF-8    		" Set encoding 
set fileencoding=utf-8    " Set file enconding
set backspace=indent,eol,start 	" Allow bs over autoindent, line breaks & start of insert action
set clipboard=unnamed		  " Use clipboard as default register
set pastetoggle=<F11> 		" paste/nopaste

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git etc.
set nobackup		  	" Dont create backup files
set nowb              		" No write backup
set noswapfile        		" No swap file
set undolevels=1000   		" Keep history undo

" Files to ignore
" Python
set wildignore+=*.pyc,*.pyo,*/__pycahce__/*a
" Temp files
set wildignore+=*.swp,~*
" Archives
set wildignore+=*.zip,*.tar

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Map Bidings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Navegation
" esc in insert mode
inoremap jj <esc>
inoremap kj <esc>
inoremap jk <esc> 

" Ctrl-c in command mode
cnoremap jj <C-C>
cnoremap kj <C-C>
cnoremap jk <C-C>

" Enable folding with the spacebar
nnoremap <space> za

" Scroll go Up or Down, keep the cursor same place, if not map for j and k
map <S-Down> <C-E>
map <S-Up> <C-Y>

" move between slipts
nnoremap <C-J> <C-W><C-J> 	" Ctrl-j to move down a split
nnoremap <C-K> <C-W><C-K> 	" Ctrl-k to move up a split
nnoremap <C-L> <C-W><C-L> 	" Ctrl-l to moveright a  split
nnoremap <C-H> <C-W><C-H> 	" Ctrl-h to move left a split

" => Actions
nnoremap <C-p> :Files<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Visual
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" enable 24bit true color
" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

"colorscheme shades_of_purple
"let g:shades_of_purple_lightline = 1
"let g:lightline = { 'colorscheme': 'shades_of_purple' }
let g:tokyonight_style = 'storm'	" available: night, storm
let g:lightline = {'colorscheme' : 'tokyonight'}
colorscheme tokyonight 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerdtree Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>

let NERDTreeShowHidden= 1	" Show hidden files
"let NERDTreeQuitOnOpen = 1 	" Closes nerdtree when open file
let NERDTreeMinimalUI = 1	" MinimalUI
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let NERDTreeIgnore = ['^node_modules$', '\.git$', '__pycache__$', '\.pyc$', '\~$']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Jedi-vim Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:jedi#use_splits_not_buffers = "left"

" ======================= Crazy stuff to be organized ========================
if &term =~ "ansi"
  let &t_ti = "\<Esc>[?47h"
  let &t_te = "\<Esc>[?47l"
endif
