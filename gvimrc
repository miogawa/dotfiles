" {{{ Color

gui
colorscheme default
hi StatusLine term=reverse cterm=reverse,bold ctermbg=red ctermfg=white gui=reverse,bold guibg=white guifg=#DF0000

" }}}
" {{{ Window

" Window Size
set columns=80
set lines=40

" }}}
" {{{ Font

if has('gui_macvim')
  set guifont:M+2VM+IPAG\ circle\ Regular:h14
elseif has('win32')
  set guifont:MeiryoKe_Gothic:h10
endif

" }}}
" {{{ Key Mapping

if has('gui_macvim')
  noremap <D-x> "+d
  noremap <D-c> "+y
  noremap <D-v> "+P
  noremap <D-V> "+p
  noremap <D-S-v> "+p
  inoremap <D-v> <C-o>"+P
  inoremap <D-V> <C-o>"+p
  inoremap <D-S-v> <C-o>"+p
  cnoremap <D-v> <C-r>+
  noremap <D-a> ggVG
  nnoremap <C-t> :tabedit<Return>
  nnoremap <C-w> :tabclose<Return>
  nnoremap <C-}> :tabnext<Return>
  nnoremap <C-{> :tabprevious<Return>
elseif has('win32')
  set winaltkeys=no
  noremap <A-x> "+d
  noremap <A-c> "+y
  noremap <A-v> "+P
  noremap <A-S-v> "+p
  inoremap <A-v> <C-o>"+P
  inoremap <A-S-v> <C-o>"+p
  cnoremap <A-v> <C-r>+
  noremap <A-a> ggVG
  nnoremap <C-t> :tabedit<Return>
  nnoremap <C-w> :tabclose<Return>
  nnoremap <C-Tab> :tabnext<Return>
  nnoremap <C-S-Tab> :tabprevious<Return>
endif

" }}}