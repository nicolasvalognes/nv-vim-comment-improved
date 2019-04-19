function! s:set(var, default) abort
  if !exists(a:var)
    if type(a:default)
      execute 'let' a:var '=' string(a:default)
    else
      execute 'let' a:var '=' a:default
    endif
  endif
endfunction

call s:set('g:developer_name', 'developer_name')

function! s:add_comment(str_type)
  let s:comment_sign = '//'
  let s:str_type = a:str_type

  if (&ft=='c' || &ft=='cpp' || &ft=='javascript' || &ft=='typescript')
    let s:comment_sign = '//'
  elseif (&ft=='python')
    let s:comment_sign = '#'
  endif

  execute "normal! O" . s:comment_sign
  execute "normal! A "
  execute "normal! A" . s:str_type
  execute "normal! A ("
  let currentdate=strftime("%Y-%m-%d")
  execute "normal! A" . currentdate
  execute "normal! A|"
  execute "normal! A" . g:developer_name
  execute "normal! A)  "
  execute "normal! $"
  startinsert
endfunction

function! s:add_todo()
  :call <SID>add_comment('TODO')
endfunction

function! s:add_fixme()
  :call <SID>add_comment('FIXME')
endfunction

function! s:add_hack()
  :call <SID>add_comment('HACK')
endfunction

function! s:add_note()
  :call <SID>add_comment('NOTE')
endfunction

function! s:add_info()
  :call <SID>add_comment('INFO')
endfunction

function! s:add_idea()
  :call <SID>add_comment('IDEA')
endfunction

function! s:add_optimize()
  :call <SID>add_comment('OPTIMIZE')
endfunction

command! -nargs=0 Todo :call <SID>add_todo()
command! -nargs=0 Fixme :call <SID>add_fixme()
command! -nargs=0 Hack :call <SID>add_hack()
command! -nargs=0 Optimize :call <SID>add_optimize()
command! -nargs=0 Note :call <SID>add_note()
command! -nargs=0 Info :call <SID>add_info()
command! -nargs=0 Idea :call <SID>add_idea()
