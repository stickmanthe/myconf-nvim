new  for linux mx

```
syntax on
set clipboard+=unnamedplus
set autoindent smartindent
set nofixeol
set nofixendofline
set smarttab
set tabstop=4
set shiftwidth=4
set ignorecase
set ai
set cursorline
set ttyfast
set termguicolors
set noswapfile

call plug#begin()

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'neoclide/coc.nvim', {'branch': 'release'} " & https://github.com/clangd/coc-clangd
Plug 'sbdchd/neoformat'
Plug 'fenetikm/falcon'
Plug 'nvim-lua/plenary.nvim'
Plug 'ej-shafran/compile-mode.nvim'
Plug 'p00f/clangd_extensions.nvim'

call plug#end()

colorscheme falcon

map <C-C> "+y
map <C-S-c> "+yy
map <C-V> "+p
map <C-Z> u
nnoremap <silent> <C-R> <Cmd>redo<CR>
nnoremap <silent> <C-O> <Cmd>CocCommand clangd.switchSourceHeader<CR>
nnoremap <silent> <C-M> <Cmd>! make<CR>
nnoremap <silent> <C-S> <Cmd>w<CR>
nnoremap <silent> <C-Q> <Cmd>q<CR>
nnoremap <silent> <C-E> <Cmd>Explore<CR>

" Coc-nvim TAB to accept autocomplete
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

lua require'lspconfig'.clangd.setup{}

```
