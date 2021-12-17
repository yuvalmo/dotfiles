" Comment using //
setlocal commentstring=\/\/\ %s

" Comment word using the surround plugin.
" 'c' is used as a mnemonic for 'comment'
if exists("g:loaded_surround")
  let g:surround_{char2nr("c")} = "/*\r*/"

  nmap <buffer> gciw ysiwc
  nmap <buffer> gciW ysiWc
  nmap <buffer> dsc  ds/
endif
