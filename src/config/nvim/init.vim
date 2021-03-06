source ~/.config/nvim/plugins.vim

set termguicolors
set background=light
syntax enable
set hlsearch

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
