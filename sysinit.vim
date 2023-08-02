" Plugin

" Theme
colorscheme pablo

" Show character column
" set colorcolumn=80

" Map Esc to quit the terminal
tnoremap <Esc> <C-\><C-n>

" Disable C-z from job-controlling neovim
nnoremap <c-z> <nop>

" Remap C-c to <esc>
nmap <c-c> <esc>
imap <c-c> <esc>
vmap <c-c> <esc>
omap <c-c> <esc>

" Syntax highlighting
syntax on

" Position in code
set number
set ruler

" Don't make noise
set visualbell

" default file encoding
set encoding=utf-8

" Line wrap
set wrap

" Highlight search results
set hlsearch
set incsearch

" auto + smart indent for code
set autoindent
set smartindent

set t_Co=256

" Mouse support
set mouse=a

" disable backup files
set nobackup
set nowritebackup

" no delays!
" set updatetime=300

" set cmdheight=1
" set shortmess+=c

" set signcolumn=yes
