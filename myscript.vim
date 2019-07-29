
" function
function! SwitchSourceHead()
    let ext = expand("%:e")
    if (ext == "cpp")
        find %:t:r.h
    elseif (ext == "h")
        find %:t:r.cpp
    endif
endfunction

" create shortcut
nmap <leader>s :call SwitchSourceHead()<CR>

