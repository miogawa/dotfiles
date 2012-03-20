" {{{ Variables

if has('unix')
  let uname = system('uname')
else
  let uname = 'UNKNOWN'
endif

" }}}
" {{{ for Japanese

if uname =~ 'Linux'
  set encoding=utf-8
elseif has(- 'gui_macvim')
  set encoding=japan
endif

if has('iconv')
  set fileencodings=us-ascii,utf-8

  if &encoding ==? 'euc-jp'
    set fileencodings+=cp932,euc-jp
  else
    set fileencodings+=euc-jp,cp932
  endif
endif

set fileencoding=utf-8

set fileformats=unix,dos,mac

set fileformat=unix

if has(- 'gui_macvim')
  set langmenu=japanese
endif

" }}}
" {{{ Color for Console

if has('win32')
  set term=win32
elseif uname =~ 'Linux'
  set term=builtin_linux
else
  set term=xterm-color
endif

" }}}
" {{{ about Edit

" Backspace over anything
set backspace=indent,eol,start

" Width of tab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Expand tab to space
set expandtab

" Show matching of bracket
set showmatch

" Ignore formatoptions
autocmd FileType * setlocal formatoptions=mM

" Folding marker is {{{ }}}
set foldmethod=marker
set nofoldenable

" IM is off
set iminsert=0
set imsearch=0

" Ignore octal and hex
set nrformats=""

" }}}
" {{{ about Find

" Ignore case
set ignorecase

" Case-sensitive including small-caps with large-caps
set smartcase

" Return 1st line when go to last line
set wrapscan

" Incrimental search
set incsearch

" }}}
" {{{ about Display

" Show tab and return
set list

" How show for tab and return
set listchars=tab:>-,trail:_

" Show line number
set number

" Support Japanese for auto line wrapping
set formatoptions+=mM

" Show rular
set ruler

" Show title
set title

" Hide toolbar
set guioptions-=T

" Hide startup message
set shortmess+=I

" Set status line
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

" Show command at status line
set showcmd

" Always show status line
set laststatus=2

" Beep by visual
set visualbell

" Use syntax highlight
syntax on

" Use default color scheme
colorscheme default
hi StatusLine term=reverse cterm=bold ctermbg=red ctermfg=white gui=bold guibg=#DF0000 guifg=white

" }}}
" {{{ About file handling

" Do not backup

set nobackup
set backupext=.bak

" }}}
" {{{ About Buffer

set hidden

" }}}
" {{{ Key Mapping

" Set <leader>
let mapleader = " "

" Handling a wrapped line as same as 2 lines
nnoremap j gj
nnoremap k gk

" Remap command and search history
nnoremap q: qq:
nnoremap q/ qq/
nnoremap q? qq?

noremap <C-]> <ESC>
inoremap <C-]> <ESC>

" Shortcut of highlight is off
nmap <ESC><ESC> :nohlsearch<CR><ESC>

" }}}
" {{{ Variables

unlet uname

" }}}
