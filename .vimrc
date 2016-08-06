" Mario Leone

" Stop VI compatibility
set nocompatible

" Show ruler
set ruler

" Show line numbers over there <-
set relativenumber 
set number

" Show mode
set showmode

" Expand tabs to spaces
set expandtab

" Autoindent copies the previously line's indentation
set autoindent

" Smartindent automatically adds more indents in C-like files
set smartindent

" Using >> or << moves a line left/right this many spaces
set shiftwidth=4

" Tabs have this many spaces
set tabstop=4

" Visually wrap lines at the end of the screen
set wrap

" Word wrap
set textwidth=79

" Set format options regarding lists and comments
set formatoptions+=qrn1
set comments+=n:*,n:#,n:>

" Set colored column
set colorcolumn=80

" Allow proper backspacing
set backspace=2

" \W will remove all trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Enable syntax highlighting and Solarized theme
syntax enable
set background=dark
colorscheme base16

" Remape ESC to jk
imap ;; <Esc>

" Turn off the arrow keys because LEARNING
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Move up and down by buffer line, not actual line
nnoremap j gj
nnoremap k gk

" Enable folding on XML files (might expand to all files later)
augroup XML
    autocmd!
    autocmd FileType xml setlocal foldmethod=indent foldlevelstart=999 foldminlines=0
augroup END