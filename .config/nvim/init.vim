" NEOVIM Configuration
" By Ladislav Brecka
" February 2023



" call plugin installation
call plug#begin()
Plug 'nvim-tree/nvim-tree.lua'
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'https://github.com/nvim-lualine/lualine.nvim'
Plug 'https://github.com/folke/lsp-colors.nvim'
Plug 'https://github.com/folke/trouble.nvim'
Plug 'https://github.com/nvim-tree/nvim-web-devicons' " Need DejaVuSansMono set in terminal
Plug 'https://github.com/williamboman/mason.nvim'
Plug 'https://github.com/williamboman/mason-lspconfig.nvim'
Plug 'https://github.com/neovim/nvim-lspconfig/'
Plug 'https://github.com/hrsh7th/cmp-nvim-lsp'
Plug 'https://github.com/hrsh7th/cmp-buffer'
Plug 'https://github.com/hrsh7th/cmp-path'
Plug 'https://github.com/hrsh7th/cmp-cmdline'
Plug 'https://github.com/hrsh7th/nvim-cmp'
Plug 'https://github.com/hrsh7th/cmp-vsnip'
Plug 'https://github.com/hrsh7th/vim-vsnip'
call plug#end()

" -- Editor related settings  ----------------------
lua require('editor-conf')

" -- Icons and colors Configuration ----------------
lua require('lsp-colors-conf')
lua require('web-icons-conf')

" -- LSP Configuration ------------------------------
lua require('lsp-conf')

" -- File Manager Configuration ---------------------
lua require('nvim-tree-conf')

" -- Statusbar Configuration -------------------------
lua require('lualine-conf')

" -- TreeSitter Configuration ------------------------
lua require('tree-sitter-conf')

" -- Trouble Configuration ---------------------------
lua require('trouble-conf')

" -- Keybindings Configuration  ---------------------
lua require('keybindings-conf')
