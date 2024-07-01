" Default Settings
set encoding=utf-8
set number

set mouse=a
set autoindent
set cursorline
set noswapfile
  
syntax on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set ignorecase
set smartcase
set wildmenu
"set expandtab
"set smarttab

call plug#begin('') " Fill in Directory
Plug 'https://github.com/preservim/tagbar' "Tagbar
Plug 'https://github.com/ap/vim-css-color' "CSS Colors
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'mhinz/vim-startify' "Vim Start Screen
Plug 'preservim/nerdtree' "Nerd Tree
Plug 'vim-airline/vim-airline' "Airline
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' "Fuzzy Finder
Plug 'rstacruz/vim-closer' "Bracket Completion
Plug 'prabirshrestha/vim-lsp' "Vim LSP
Plug 'mattn/vim-lsp-settings' "LSP Settings
Plug 'nvim-tree/nvim-web-devicons' "Coloured Icons
"Plug 'ryanoasis/vim-devicons'
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

colorscheme catppuccin-frappe

nmap <F8> :TagbarToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

function g:StartLsp()
	function! OnLspBufferEnabled() abort
	    setlocal omnifunc=lsp#complete
	    setlocal signcolumn=yes
	    nmap <buffer> gi <plug>(lsp-definition)
	    nmap <buffer> gd <plug>(lsp-declaration)
	    nmap <buffer> gr <plug>(lsp-references)
	    nmap <buffer> gl <plug>(lsp-document-diagnostics)
	    nmap <buffer> <f2> <plug>(lsp-rename)
	    nmap <buffer> <f3> <plug>(lsp-hover)
	endfunction
	
	augroup lsp_install
	  au!
	  autocmd User lsp_buffer_enabled call OnLspBufferEnabled()
	augroup END

endfunction

set termguicolors
lua << EOF
require("bufferline").setup{}
EOF
