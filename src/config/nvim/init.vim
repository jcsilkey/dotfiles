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
