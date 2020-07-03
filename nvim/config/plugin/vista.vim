function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

let g:vista_default_executive = 'nvim_lsp'
let g:vista_fzf_preview = ['right:50%']

