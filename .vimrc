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
set et
colorscheme darkblue 
let loaded_matchparen=1

" Remove extra spaces.
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.css,*.html match BadWhitespace /\s\+$/

" ************************************************************************************************
" Vundle setting
" ***********************************************************************************************
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'klen/python-mode'
Plugin 'gregsexton/MatchTag'
Plugin 'tomtom/tcomment_vim'
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'

call vundle#end()
filetype plugin indent on


" ***********************************************************************************************
" NERDTree settings
" ***********************************************************************************************
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeIgnore=['\.pyc$', '\.git$', '\.ropeproject', '\.swp']
let NERDTreeShowHidden=1

" ***********************************************************************************************
" Python-mode settings
" ***********************************************************************************************
let g:pymode_lint=1
let g:pymode_lint_checker="pyflakes,pep8"
let g:pymode_syntax=1


" ***********************************************************************************************
" Syntastic settings
" ***********************************************************************************************
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=1
