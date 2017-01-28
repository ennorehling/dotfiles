set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
set number
set cindent
set laststatus=2
set textwidth=72
set formatoptions=cqt

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" more Plugin commands
" ...
Plugin 'editorconfig/editorconfig-vim'
call vundle#end()            " required
filetype plugin indent on    " required

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

augroup vimrc_autocmds
  autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
  autocmd BufEnter * match OverLength /\%74v.*/
augroup END

