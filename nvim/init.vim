syntax on
set number
set clipboard+=unnamedplus
set autoindent smartindent
set nofixeol
set nofixendofline
set tabstop=4
set shiftwidth=4
" set expandtab
" set nowrap
set ignorecase
set ai
set cursorline
set lazyredraw
set mousescroll=ver:5
set ttyfast
set termguicolors
" set spell spelllang=ru,en    
set guifont=Agave\ Nerd\ Font:h12

highlight Cursorline cterm=bold
call plug#begin('~/AppData/Local/nvim/plugged')

" Plug 'ribru17/bamboo.nvim'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'eggbean/resize-font.gvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'romgrk/barbar.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'ziontee113/color-picker.nvim'
Plug 'dstein64/nvim-scrollview', { 'branch': 'main' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'HoNamDuong/hybrid.nvim'
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'theHamsta/nvim-dap-virtual-text'
call plug#end() "autocmd VimEnter * ColorizerToggle | wincmd p

colorscheme hybrid

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p
map <C-C> "+y
map <C-S-c> "+yy
map <C-V> "+p
map <C-Z> u
nnoremap <silent> <C-R> <Cmd>redo<CR>
" map <silent> <C-S> <Cmd>w<CR>
nnoremap <silent> <Tab> <Cmd>NERDTreeToggle<CR>
" Move to previous/next
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"



