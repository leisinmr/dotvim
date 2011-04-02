" System vimrc file for MacVim
"
" Maintainer:	Matt Leisinger <leisinmr@gmail.com>
" Last Change:	Sat April 2 2011

" Pathogen plugin for maintaining plugins as bundles
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible

" Disable localized menus for now since only some items are translated (e.g.
" the entire MacVim menu is set up in a nib file which currently only is
" translated to English).
set langmenu=none

set ts=2 sts=2 sw=2 expandtab

command! Status echo "All systems are go!"

if has("autocmd")
  filetype plugin indent on
endif


" ADDED BY ME
set softtabstop=2
set shiftwidth=2
set tabstop=2
set autoindent
"set number
set bg=light
" Set certain options if a gui is running
" &term =~ "xterm-256"
if has("gui_running")
  set guifont=Menlo\ Regular:h10
  set guioptions+=TlLb
  set guioptions-=TlLb
  set lines=60
  set columns=80
  colorscheme torte
elseif &term =~ "-256color"
  colorscheme torte
else
  colorscheme default
endif
set hidden
set ignorecase

