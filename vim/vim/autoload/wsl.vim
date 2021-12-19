" This file declares functions to check whether vim
" is running on Windows Subsystem for Linux.
"
" To set WSL-specific settings write:
"   if wsl#is_wsl()
"     let ...
"   endif

if exists('g:loaded_wsl')
  finish
endif
let g:loaded_wsl = 1

function! s:get_kernel_name()
  let lines = readfile("/proc/version")
  let kernel = lines[0]
  return kernel
endfunction

function! wsl#is_wsl()
  if !has("unix")
    return 0
  endif
  let name = s:get_kernel_name()
  return name =~ "microsoft"
endfunction
