set nocompatible              " be iMproved, required
set backspace=2

set laststatus=2
set number
set hlsearch
set autochdir
let mapleader=","

set tabstop=4
set expandtab
set shiftwidth=4

" set indent for yaml file
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" using F3 to switch between paste
set pastetoggle=<F3>

syntax enable
set background=dark
colorscheme solarized

" short cut open nerd tree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeNodeDelimiter = "\u00a0"

set clipboard=unnamed

" required for vim-go
filetype plugin on
" vim-go key map
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

" vim-go definition
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

" vim-go documentation
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

au FileType go nmap <Leader>s <Plug>(go-implements)
" vim-go auto import
let g:go_fmt_command = "goimports"

au BufNewFile,BufRead *.go
    \ set tabstop=4 |
    \ set expandtab |
    \ set autoindent |

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
