if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

function! PlugLoaded(name)
    return (
        \ has_key(g:plugs, a:name) &&
        \ isdirectory(g:plugs[a:name].dir) &&
        \ stridx(&rtp, g:plugs[a:name].dir) >= 0)
endfunction

augroup vimplugload
    autocmd!
augroup END

call plug#begin('~/.local/share/nvim/site/plugged')
    for s:fpath in split(globpath('~/.config/nvim/plugins/', '*.vim'), '\n')
        exe 'source' s:fpath
    endfor
call plug#end()

doautocmd User vimplugload
