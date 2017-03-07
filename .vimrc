#!/bin/bash
syntax enable "enables some syntax highlighting while you are in vim"
set nocompatible "if you want your system-wide vim settings to use your vimrc include this"
set hls "highlight text in vim"
set number "in vim, line numbers will be turned on"
set ruler "display cursor position in status line of file"
set smartindent "indents lines based on the indention of the previous line"
set smarttab "tabs lines based on the tab of the previous line"
set expandtab "turns tabs into spaces so that your cursor doesn't jump around"
set tabstop=2 "set the length of your tab"
set shiftwidth=2 "determines number of spaces to convert tabs into (set to the same as tabstop)"
set history=5000 "how much history you want vim to keep track of"
inoremap jj <ESC> "maps ESC key for exiting Insert Mode to jj"

au BufRead,BufNewFile *.scala set filetype=scala
au! Syntax scala source ~/.vim/syntax/scala.vim

vmap <C-S-c> :<Esc>`>a<CR><Esc>mx`<i<CR><Esc>my'xk$v'y!xclip -selection c<CR>u
