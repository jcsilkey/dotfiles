Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

augroup vimplugload
    autocmd User vimplugload call InitLanguageClient()
augroup END

function! InitLanguageClient()
    "set hidden

    let g:LanguageClient_serverCommands = {
        \ 'php': ['tcp://127.0.0.1:2089'],
        \ }

    nnoremap <F2> :call LanguageClient_contextMenu()<CR>

    "nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
    "nnoremap <silent> <leader>r :call LanguageClient_textDocument_references()<CR>
    "nnoremap <silent> <leader>h :call LanguageClient_textDocument_hover()<CR>
    "inoremap <silent> <C-y> <C-o>:call LanguageClient#textDocument_signatureHelp()<CR>
endfunction
