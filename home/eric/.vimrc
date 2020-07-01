set nocompatible              " be iMproved, required
set hlsearch
set number
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Plugin 'godlygeek/tabular'
Plugin 'fatih/vim-go'
"
"
" " All of your Plugins must be added before the following line
 call vundle#end()            " required
" filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line









syntax on
"set clipboard=unnamed
set number
:highlight LineNr ctermfg=grey
set tabstop=2 shiftwidth=2 expandtab
filetype plugin indent on

"Added these entries to try to fix YCM auto completion plugin in vim
"Finally got it working by enabling some of these debug flags, looking at
"logs, and eventually running ./build.py in
"/.vim/bundle/YouCompleteMe/third_party/ycmd/build.py
"let g:ycm_path_to_python_interpreter = '/usr/local/bin/python'
"let g:ycm_server_use_vim_stdout = 0
"let g:ycm_keep_logfiles = 1
"let g:ycm_log_level = 'debug'
"let g:ycm_server_use_vim_stdout = 1
"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_log_level = 'debug'

" lines are too long.
function! HighlightTooLongLines()
  highlight def link RightMargin ErrorMsg
  if &textwidth != 0
    exec 'match RightMargin /\%<' . (&textwidth + 3) . 'v.\%>' . (&textwidth + 1) . 'v/'
  endif
endfunction

" trailing whitespace and lines that are too long will
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
au BufNewFile,BufRead * call HighlightTooLongLines()
au BufNewFile,BufRead * 2match ExtraWhitespace /\s\+$/

