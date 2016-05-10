set nocompatible " be iMproved, required
filetype off " required

" Syntax Highlighting
if has("syntax")
    syntax on
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'The-NERD-Tree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
