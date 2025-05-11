-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        use {
                'nvim-telescope/telescope.nvim',
                requires = { {'nvim-lua/plenary.nvim'} }
        }

        use 'folke/tokyonight.nvim'

        use {
                "nvim-telescope/telescope-file-browser.nvim",
                requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
        }

        use {
                'nvim-treesitter/nvim-treesitter',
                run = ':TSUpdate'
        }

        use { 'nvim-treesitter/nvim-tree-docs' }
        use { 'nvim-treesitter/nvim-treesitter-refactor'}
        use { 'nvim-treesitter/nvim-treesitter-context'}


        use { "ellisonleao/gruvbox.nvim" }
        use { "yorickpeterse/happy_hacking.vim" }
        use { 'kartikp10/noctis.nvim', requires = { 'rktjmp/lush.nvim' } }
        use('mbbill/undotree')
        use {'tpope/vim-dispatch'}
        use {'ej-shafran/compile-mode.nvim'}


        use({
                "iamcco/markdown-preview.nvim",
                run = function() vim.fn["mkdp#util#install"]() end,
        })
end)
