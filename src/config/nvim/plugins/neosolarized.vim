Plug 'iCyMind/NeoSolarized'

augroup vimplugload
  autocmd User vimplugload call InitNeoSolarizedTheme()
augroup END

function! InitNeoSolarizedTheme()
  colorscheme NeoSolarized
endfunction
