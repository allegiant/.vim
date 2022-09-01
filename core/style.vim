function! IsWSL()
  if has("unix")
    let lines = readfile("/proc/version")
    if lines[0] =~ "WSL"
      return 1
    endif
  endif
  return 0
endfunction

if IsWSL()
  let &t_SI = "\<Esc>[6 q"
  let &t_SR = "\<Esc>[3 q"
  let &t_EI = "\<Esc>[2 q"
endif

if has('termguicolors')
  set termguicolors
endif

if !has('gui_running')
  set t_Co=256
endi


set background=light

let g:gruvbox_material_background = 'soft'

let g:gruvbox_material_better_performance = 1

colorscheme gruvbox-material
