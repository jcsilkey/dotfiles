source ~/.config/nvim/plugins.vim

set termguicolors
set background=light
syntax enable
set hlsearch
let g:solarized_term_italics=0
let g:solarized_termtrans=0
let g:solarized_statusline="normal"
let g:solarized_visibility="bold"
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
colorscheme solarized8_flat

:let mapleader = ","
set ruler
set list

set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

set incsearch
set ignorecase
set showcmd
set history=100
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" clear last search
nnoremap <backspace> :noh<CR>:<backspace>

" remap split nav keys
" https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

" open splits to right and bottom
" https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
set splitbelow
set splitright

let g:deoplete#enable_at_startup = 1
