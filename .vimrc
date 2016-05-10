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
"Plugin 'The-NERD-Tree'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'itchyny/lightline.vim'
Plugin 'Tagbar'
Plugin 'Syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" lightline
set laststatus=2

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Syntasic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NERD
map <C-n> :NERDTreeToggle<CR>

autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" NERD-git
if exists("g:loaded_nerdtree_git")
    finish
endif
let g:loaded_nerdtree_git = 1

let s:NERDTreeIndicatorMap = {
\ " M"        : "✹",
\ "M "        : "✔︎",
\ "A "        : "✚",
\ "??"        : "✭",
\ "R "        : "➜",
\ "Dirty"     : "✗",
\ "Clean"     : "✔︎",
\ }
