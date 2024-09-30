new  for linux mx

```
syntax on
set clipboard+=unnamedplus
set autoindent smartindent
set nofixeol
set nofixendofline
set tabstop=4
set shiftwidth=4
set ignorecase
set ai
set cursorline
set ttyfast
set termguicolors

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

call plug#end()

colorscheme falcon

map <C-C> "+y
map <C-S-c> "+yy
map <C-V> "+p
map <C-Z> u
nnoremap <silent> <C-R> <Cmd>redo<CR>

lua require'lspconfig'.clangd.setup{}

```
