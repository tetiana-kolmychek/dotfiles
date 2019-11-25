"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  "call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

  " syntax checking
  call dein#add('scrooloose/syntastic')

  " cool statusbar
  call dein#add('Bling/vim-airline')

  " git wrapper
  " it also configures vim to look for ctags in .git/tags
  call dein#add('tpope/vim-fugitive')

  " file navigation
  call dein#add('ctrlpvim/ctrlp.vim')

  " themes
  call dein#add('chriskempson/vim-tomorrow-theme')
  call dein#add('chriskempson/base16-vim')

  " interesting themes
  call dein#add('chriskempson/vim-tomorrow-theme')

  call dein#add('chriskempson/base16-vim')

  " highlight hidden symbols
  call dein#add('vim-scripts/spacehi.vim')
  call dein#add('vim-scripts/cream-showinvisibles')

  " slim templating engine
  call dein#add('slim-template/vim-slim')
  " elixir
  call dein#add('elixir-lang/vim-elixir')

  " trailing whitespace
  call dein#add('ntpeters/vim-better-whitespace')

  " nerdtree
  call dein#add('scrooloose/nerdtree')

  " buffergator
  call dein#add('jeetsukumaran/vim-buffergator')

  " graphql
  call dein#add('jparise/vim-graphql')

  " vue syntax highlight
  call dein#add('posva/vim-vue')

   " pug (formerly jade) syntax highlight
  call dein#add('digitaltoad/vim-pug')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

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
let g:ctrlp_user_command = 'find %s -type f -maxdepth 8'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let g:airline_section_b = ""
let g:airline_section_y = ""

" make buffergator open tab window to the right
let g:buffergator_viewport_split_policy = 'B'

" set buffergator split size
let g:buffergator_vsplit_size = 50

" close vim if the tree is last tab
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" set tree width
let NERDTreeWinSize=50

" map CtrlP clear cache
map <c-I> :CtrlPClearCache <CR>

let mapleader = ","

" use Rubocop for syntastic
let g:syntastic_ruby_checkers          = ['rubocop', 'mri']

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

" Autostart NerdTree
autocmd vimenter * NERDTree

" Allow using mouse for navigation and selection
set mouse=a

" Add hotkey to drop search highlight
nnoremap <leader><space> :nohlsearch<cr>

" Integrate with system clipboard
set clipboard=unnamedplus

" buffers stuff, heavily inspired by
" https://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 0

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>q :bp <BAR> bd #<CR>

" end of buffers stuff

" Show 80 chars indicator
highlight ColorColumn ctermbg=darkgray
set colorcolumn=80
