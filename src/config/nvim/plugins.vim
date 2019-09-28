call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'lifepillar/vim-solarized8'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-vdebug/vdebug'
Plug 'autozimu/LanguageClient-neovim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()
