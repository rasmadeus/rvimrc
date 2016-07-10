" ************************************************************************************************
" Common settings
" ************************************************************************************************

syntax enable
set number 
set ts=4
set autoindent
set expandtab
set shiftwidth=4
set cursorline
set showmatch
let python_highlight_all = 1

" Remove extra spaces.
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" ************************************************************************************************
" Vundle setting
" ***********************************************************************************************
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

call vundle#end()
filetype plugin indent on


" ***********************************************************************************************
" NERDTree settings
" ***********************************************************************************************
let g:nerdtree_tabs_open_on_console_startup=1