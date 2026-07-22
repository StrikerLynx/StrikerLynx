filetype plugin indent on
set encoding=utf-8
set number

set mouse=a
set autoindent
set noswapfile

syntax on
color desert

set tabstop=4
set softtabstop=4
set shiftwidth=4

set ignorecase
set smartcase
set nobackup
set wildmenu

function InitLspPlugins()
	call plug#begin('~/vimplugins')

	Plug 'prabirshrestha/vim-lsp'
	Plug 'mattn/vim-lsp-settings'

	call plug#end()
endfunction

call InitLspPlugins()
