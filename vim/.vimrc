set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'               "Vundle itself
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on

syntax on                                   "Colorful syntax
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark
set tabstop=4                               "Spaces per TAB
set softtabstop=4                           "Insert space per TAB
set expandtab                               "Tabs are spaces

set number                                  "Show line numbers
set showcmd                                 "Show last executed command
set cursorline                              "Show linebar in current line

set hlsearch                                "Highlight search matches
set ignorecase                              "Ignore case while searching


set encoding=utf-8
set t_Co=256                                "Use 256 color

let g:molokai_original = 1
let g:rehash256 = 1
