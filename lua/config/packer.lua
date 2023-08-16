vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope for fuzzy finding and more
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        requires = { 'nvim-lua/plenary.nvim' }
    }

    -- Rose-pine colorscheme
    use {
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    }

    -- Treesitter for syntax highlighting and more
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Plenary for utility functions
    use 'nvim-lua/plenary.nvim'

    -- Null-ls for using Neovim as a language server
    use 'jose-elias-alvarez/null-ls.nvim'

    -- Harpoon for quick navigation and terminal management
    use 'ThePrimeagen/harpoon'

    -- Undotree for visualizing the undo history
    use 'mbbill/undotree'

    -- Visual-multi for multiple cursors
    use {
        'mg979/vim-visual-multi',
        branch = 'master'
    }

    -- Lsp-trouble for showing LSP diagnostics in a list
    use {
        'folke/lsp-trouble.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require('trouble').setup {}
        end
    }

    -- Comment for easy commenting of code
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- Fugitive for Git integration
    use 'tpope/vim-fugitive'

    -- Lsp-zero for LSP configuration and completion
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }
end)
