" My VIMRC

" --- Misc ---
" Show line numbers
set number

" highlight tabs and trailing spaces
set listchars=tab:>-,trail:-
set list

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" --- Short Cuts ---
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>
map <leader>bd :Bclose<cr>

" No reaching for Esc
map fd <Esc>
map! fd <Esc>

" Fast saving
nmap <leader>w :w!<cr>

" Line wrapping
nmap j gj
nmap k gk

" --- Indentation ---
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set autoindent
set cindent 

" Execute the Makefile and toggle the 
" resulting mini-window with errors
map <leader>ff :make<cr>
map <leader>ft :make test<cr>
map <leader>fw :cw<cr>

" --- Plugins --- 
" Vim-Plug Plugin Manager
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'bling/vim-bufferline'
Plug 'othree/html5.vim'
Plug 'othree/yajs.vim'
Plug 'mxw/vim-jsx'
"Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

" EasyAlign
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Python mode
let g:pymode_python = 'python3'

" NerdTree
map <C-n> :NERDTreeToggle<CR>
" Close VIM if NerdTree is only buffer left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Open NerdTree if you try to open a folder with VIM
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
