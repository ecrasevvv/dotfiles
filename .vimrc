execute pathogen#infect()
syntax on
set nocompatible
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set noswapfile
set incsearch
set number
set timeoutlen=1000 ttimeoutlen=0
filetype plugin indent on

" Remaps
" inoremap jj <Esc>
nnoremap ff <ESC>:Dir .<CR>
vnoremap ff <ESC>:Dir .<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

let g:livepreview_previewer = 'zathura'

" Colorscheme
set termguicolors

set background=dark
colorscheme default
highlight Normal guibg=NONE
"highlight Normal guibg=#181818
highlight Visual guibg=#0000ff guifg=#ffffff
