set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdcommenter'
" Plugins end
call vundle#end()
filetype plugin indent on

" Enable folding
set foldmethod=indent
set foldlevel=99

" Python PEP8 indentation
au BufNewFile,BufRead *.py set
			\ tabstop=4
			\ softtabstop=4
			\ shiftwidth=4
			\ textwidth=79
			\ expandtab
			\ fileformat=unix
" js, css, html indentation
au BufNewFile,BufRead *.js, *.html, *.cs set
			\ tabstop=4
			\ softtabstop=4
			\ shiftwidth=4
			\ expandtab

syntax on
set encoding=utf-8
let python_highlight_all = 1
if has('gui_running')
	set background=dark	
	set guifont=Anonymous\ Pro\ for\ Powerline\ 11
	colorscheme solarized
else
	colorscheme zenburn
endif
set smartindent
set autoindent
let g:airline_theme='luna'
let g:airline_solarized_bg='dark'
map <F5> mzgg=G`z
