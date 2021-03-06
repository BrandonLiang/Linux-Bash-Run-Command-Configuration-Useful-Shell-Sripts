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
set softtabstop=4 "set the length of your tab when editing"
set showcmd "show command in bottom bar"
set cursorline "highlight current line"
filetype indent on "load filetype-specific indent files"
set wildmenu "visual autocomplete for command menu"
set lazyredraw "redraw only when we need to, leading to faster macros"
set showmatch "highlight matching [{()}]"
set incsearch "search as characters are entered"
set hlsearch "highlight matches"

"turn off search highlight do: /<space>"
nnoremap <leader><space> :nohlsearch<CR>

"space open/closes folds"
nnoremap <space> za

"move to beginning/end of line"
nnoremap B ^
nnoremap E $

"highlight last inserted text"
nnoremap gV `[v`]

"save session"
nnoremap <leader>s :mksession<CR>

"Silver Search => :Ag"

"allows cursor change in tmux mode"
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"Autogroups"
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
                 \:call <SID>StripTrailingWhitespaces()
    autocmd FileType java setlocal noexpandtab
    autocmd FileType java setlocal list
    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
    autocmd FileType java setlocal formatprg=par\ -w80\ -T4
    autocmd FileType py setlocal noexpandtab
    autocmd FileType py setlocal list
    autocmd FileType py setlocal listchars=tab:+/ ,eol:s-
    autocmd FileType py setlocal formatprg=par\ -w80\ -T4
    autocmd FileType txt setlocal noexpandtab
    autocmd FileType txt setlocal list
    autocmd FileType txt setlocal listchars=tab:+/ ,eol:s-
    autocmd FileType txt setlocal formatprg=par\ -w80\ -T4
    autocmd FileType php setlocal expandtab
    autocmd FileType php setlocal list
    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType ruby setlocal commentstring=#\ %s
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
augroup END


set shiftwidth=2 "determines number of spaces to convert tabs into (set to the same as tabstop)"
set history=5000 "how much history you want vim to keep track of"
inoremap jj <ESC> "maps ESC key for exiting Insert Mode to jj"



au BufRead,BufNewFile *.scala set filetype=scala
au! Syntax scala source ~/.vim/syntax/scala.vim

vmap <C-S-c> :<Esc>`>a<CR><Esc>mx`<i<CR><Esc>my'xk$v'y!xclip -selection c<CR>u

"JSON syntax highlighting"
map <leader>json <Esc>:$!json_xs -f json -t json-pretty<CR>
