if exists('g:loaded_textobj_css')
  finish
endif

call textobj#user#plugin('css', {
\      '-': {
\        '*sfile*': expand('<sfile>:p'),
\        'select-a': 'ac',  '*select-a-function*': 's:select_a',
\        'select-i': 'ic',  '*select-i-function*': 's:select_i'
\      }
\    })

let s:start_pattern = '{'
let s:end_pattern = '}'

function! s:select_a()
  let s:flags = 'Wb' " Search backward to previous {

  call searchpair(s:start_pattern,'',s:end_pattern, s:flags)
  let start_pos = getpos('.')

  " Jump to match
  normal %
  let end_pos = getpos('.')

  return ['V', start_pos, end_pos]
endfunction

function! s:select_i()
  let s:flags = 'Wb' " Search backward to previous {

  call searchpair(s:start_pattern,'',s:end_pattern, s:flags)

  " Move down one line, and save position
  normal j^
  let start_pos = getpos('.')

  " Move up again, jump to match, then up one line and save position
  normal k%k$
  let end_pos = getpos('.')

  return ['V', start_pos, end_pos]
endfunction

let g:loaded_textobj_css = 1
