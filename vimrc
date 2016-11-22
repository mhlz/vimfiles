" be iMproved
set nocompatible
" required for Vundle
filetype off

set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/plugins')

" Let Vundle manage itself
Plugin 'VundleVim/Vundle.vim'

" General plugins
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'sickill/vim-sunburst'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/YouCompleteMe'

" Language specific plugins

" javascript
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'

" ruby
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

call vundle#end()
filetype plugin indent on
set t_Co=256
syntax enable

" Colorscheme
set background=dark
colorscheme Sunburst

set guifont=Inconsolata-g\ for\ Powerline\ 13

let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

" Map F2 to nohl
map <F2> :nohl<CR>

" Use relative line numbers
set number
set relativenumber
set numberwidth=4
highlight LineNr guibg=black
highlight LineNr ctermfg=black ctermbg=black

" Use the X clipboard by default
set clipboard=unnamedplus
" Enhance command-line completion
set wildmenu
" Allow cursor keys in ins mode
set esckeys
" Allow backspace in ins mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","
" Don't add empty newlines at the end of files
set binary
set noeol
" Make sure vim history works
set viminfo+=!
" Reduce splits to a single line
set wmh=0
" Enable syntax highlighting
syntax on
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show last status line
set laststatus=2
" Disable error bells
set noerrorbells
" Don't reset cursor to start of line when moving around
set nostartofline
" show the cursor position
set ruler
" Don't show the intro message when starting vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the windows title bar
set title
" Show the (partial) command as it's being typed
set showcmd
" Start scrolling five lines before the horizontal window border
set scrolloff=3

" Command to strip trailing whitespaces (:Sws)
function! StripWhitespace()
    let save_cursor=getpos(".")
    let old_query=getreg('/')
    :%s/\s\+$//e
    call setpos('-',save_cursor)
    call setreg('/',old_query)
endfunction

" Map NERDTree to ctrl-n
map <C-n> :NERDTreeToggle<CR>

" NERDCommenter options
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'

" map CtrlPMixed to ctrl-p
map <C-p> :CtrlPMixed<CR>

" Set tab to 4 spaces
set expandtab
set tabstop=4
set shiftwidth=4

" Indent guide style
let g:indet_guides_start_level=2
let g:indet_guides_guide_size=1

" make set list display all special chars
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
