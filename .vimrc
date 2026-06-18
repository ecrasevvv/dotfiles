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
colorscheme retrobox
highlight Normal guibg=NONE
"highlight Normal guibg=#181818
highlight Visual guibg=#0000ff guifg=#ffffff

" LSP
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=no
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)

    let g:lsp_format_sync_timeout = 1000
    let g:lsp_document_highlight_enabled = 0
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
" End LSP
