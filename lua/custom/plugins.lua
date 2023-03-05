--p This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'akinsho/bufferline.nvim'
    use 'andweeb/presence.nvim'
    use 'glepnir/dashboard-nvim'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'kyazdani42/nvim-tree.lua'
    use 'kyazdani42/nvim-web-devicons'
    use 'L3MON4D3/LuaSnip'
    use 'lewis6991/gitsigns.nvim'
    use 'mbbill/undotree'
    use 'moll/vim-bbye'
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'
    use 'nvim-treesitter/playground'
    use 'onsails/lspkind-nvim'
    use 'ryanoasis/vim-devicons'
    use 'rafamadriz/friendly-snippets'
    use 'theprimeagen/harpoon'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-commentary'
    use 'wbthomason/packer.nvim'
    use 'windwp/nvim-autopairs'
    use 'saadparwaiz1/cmp_luasnip'
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use { 'catppuccin/nvim', as = "catppuccin" }
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- LSP Support
    use {
        'neovim/nvim-lspconfig',
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim'
    }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            --LSP
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional
            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }
end)
