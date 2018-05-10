set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" syntax checking
Plugin 'scrooloose/syntastic'

" cool statusbar
Plugin 'Bling/vim-airline'

" git wrapper
" it also configures vim to look for ctags in .git/tags
Plugin 'tpope/vim-fugitive'

" file navigation
Plugin 'kien/ctrlp.vim'

" interesting themes
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'chriskempson/base16-vim'

" highlight hidden symbols
Plugin 'spacehi.vim'
Plugin 'cream-showinvisibles'

" rbenv
Plugin 'tpope/vim-rbenv'

" rails
Plugin 'tpope/vim-rails'

" bundler
Plugin 'tpope/vim-Bundler'

" rake
Plugin 'tpope/vim-rake'

" slim templating engine
Plugin 'slim-template/vim-slim'

" api blueprint
Plugin 'kylef/apiblueprint.vim'

" elixir
Plugin 'elixir-lang/vim-elixir'

" nerdtree
Plugin 'scrooloose/nerdtree'

" trailing whitespace
Plugin 'ntpeters/vim-better-whitespace'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line

" for statusbar to appear
" " https://github.com/bling/vim-airline/wiki/FAQ#vim-airline-doesnt-appear-until-i-create-a-new-split
set laststatus=2

set wildignore+=*/vendor/*

" 256-colors
set t_Co=256

" force dark background
set background=dark

" line numbers
set number

" syntax highlighting
syntax on

" set CtrlP mode to Mixed by-default
"let g:ctrlp_cmd = 'CtrlPMixed'

let g:ctrlp_working_path_mode = 'ra'

let g:airline_section_b = ""
let g:airline_section_y = ""

" map CtrlP clear cache
map <c-I> :CtrlPClearCache <CR>

autocmd vimenter * NERDTree

" identation and tabs handling
" based on http://stackoverflow.com/a/1878984
set tabstop=2       " The width of a TAB is set to N.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of N.
set shiftwidth=2    " Indents will have a width of N
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
set copyindent

highlight ColorColumn ctermbg=darkgray
set colorcolumn=80
