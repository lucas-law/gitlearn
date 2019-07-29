function! SwitchSourceHead()
    let ext = expand("%:e")
    if (ext == "cpp")
        find %:t:r.h
    elseif (ext == "h")
        find %:t:r.cpp
    endif
endfunction

nmap <leader>s :call SwitchSourceHead()<cr>
