set nocompatible 
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'               "Vundle itself
Plugin 'octol/vim-cpp-enhanced-highlight'   "More C++ things
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()            
filetype plugin indent on       

syntax on                                   "Colorful syntax
colorscheme monokai                         "Set colorscheme 

set tabstop=4                               "Spaces per TAB
set softtabstop=4                           "Insert space per TAB
set expandtab                               "Tabs are spaces

set number                                  "Show line numbers
set showcmd                                 "Show last executed command
set cursorline                              "Show linebar in current line

set hlsearch                                "Highlight search matches
set ignorecase                              "Ignore case while searching



set t_Co=256                                "Use 256 color
