Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

augroup vimplugload
    autocmd User vimplugload call InitDeoplete()
augroup END

function! InitDeoplete()
    let g:deoplete#enable_at_startup = 1
endfunction
