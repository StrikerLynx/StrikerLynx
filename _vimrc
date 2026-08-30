"############################################\
"				 Vim Config					#\
"############################################\
filetype plugin indent on					"\
set encoding=utf-8							"\
set number									"\
											"\
set mouse=a									"\
set autoindent								"\
set noswapfile								"\
											"\
syntax on									"\
color Main_Stuff							"\
set guioptions-=T							"\
set termguicolors							"\
											"\
set tabstop=4								"\
set softtabstop=4							"\
set shiftwidth=4							"\
											"\
set ignorecase								"\
set smartcase								"\
set nobackup								"\
set wildmenu								"\
											"\
call plug#begin()							"\
Plug 'tmsvg/pear-tree'						"\
Plug 'vim-airline/vim-airline'				"\
Plug 'preservim/nerdtree'					"\
Plug 'https://github.com/ap/vim-css-color'	"\
Plug 'ryanoasis/vim-devicons'				"\
call plug#end()								"\
											"\
nmap <F8> :TagbarToggle<CR>					"\
nnoremap <leader>n :NERDTreeFocus<CR>		"\
"nnoremap <C-n> :NERDTree<CR>				"\
nnoremap <C-t> :NERDTreeToggle<CR>			"\
nnoremap <C-f> :NERDTreeFind<CR>			"\
											"\
let g:NERDTreeDirArrowExpandable="+"		"\
let g:NERDTreeDirArrowCollapsible="~"		"\
											"\
"function InitLspPlugins()					"\
"	call plug#begin('~/vimplugins')			"\
"											"\
"	Plug 'prabirshrestha/vim-lsp'			"\
"	Plug 'mattn/vim-lsp-settings'			"\
"											"\
"	call plug#end()							"\
"endfunction								"\
"#call InitLspPlugins()						"\
"############################################\
