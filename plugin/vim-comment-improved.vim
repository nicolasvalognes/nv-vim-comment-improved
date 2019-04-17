function! s:add_todo()
    if (&ft=='c' || &ft=='cpp' || &ft=='javascript' || &ft=='typescript')
      execute "normal! O// TODO - "
      let currentdate=strftime("%Y-%m-%d")
      execute "normal! A" . currentdate
      execute "normal! A -  "
      execute "normal! $"
      startinsert
    elseif (&ft=='python')
      execute "normal! O# TODO - "
      let currentdate=strftime("%Y-%m-%d")
      execute "normal! A" . currentdate
      execute "normal! A -  "
      execute "normal! $"
      startinsert
    endif
endfunction

function! s:add_fixme()
    if (&ft=='c' || &ft=='cpp' || &ft=='javascript' || &ft=='typescript')
      execute "normal! O// FIXME - "
      let currentdate=strftime("%Y-%m-%d")
      execute "normal! A" . currentdate
      execute "normal! A -  "
      execute "normal! $"
      startinsert
    elseif (&ft=='python')
      execute "normal! O# FIXME - "
      let currentdate=strftime("%Y-%m-%d")
      execute "normal! A" . currentdate
      execute "normal! A -  "
      execute "normal! $"
      startinsert
    endif
endfunction

function! s:add_hack()
    if (&ft=='c' || &ft=='cpp' || &ft=='javascript' || &ft=='typescript')
      execute "normal! O// HACK - "
      let currentdate=strftime("%Y-%m-%d")
      execute "normal! A" . currentdate
      execute "normal! A -  "
      execute "normal! $"
      startinsert
    elseif (&ft=='python')
      execute "normal! O# HACK - "
      let currentdate=strftime("%Y-%m-%d")
      execute "normal! A" . currentdate
      execute "normal! A -  "
      execute "normal! $"
      startinsert
    endif
endfunction

function! s:add_optimize()
    if (&ft=='c' || &ft=='cpp' || &ft=='javascript' || &ft=='typescript')
      execute "normal! O// OPTIMIZE - "
      let currentdate=strftime("%Y-%m-%d")
      execute "normal! A" . currentdate
      execute "normal! A -  "
      execute "normal! $"
      startinsert
    elseif (&ft=='python')
      execute "normal! O# OPTIMIZE - "
      let currentdate=strftime("%Y-%m-%d")
      execute "normal! A" . currentdate
      execute "normal! A -  "
      execute "normal! $"
      startinsert
    endif
endfunction

command! -nargs=0 Todo :call <SID>add_todo()
command! -nargs=0 Fixme :call <SID>add_fixme()
command! -nargs=0 Hack :call <SID>add_hack()
command! -nargs=0 Optimize :call <SID>add_optimize()
