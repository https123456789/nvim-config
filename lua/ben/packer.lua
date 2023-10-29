-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
use 'rstacruz/vim-closer'

	use {
		'nvim-telescope/telescope.nvim', branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use('nvim-treesitter/nvim-treesitter', {run = 'TSUpdate'})

    use 'wakatime/vim-wakatime'
    use 'freddiehaddad/feline.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    }

    use 'tpope/vim-vinegar'
    use 'sbdchd/neoformat'
    use {"akinsho/toggleterm.nvim", tag = '*'}
    use 'voldikss/vim-floaterm'
    use 'ThePrimeagen/harpoon'
    use "lukas-reineke/indent-blankline.nvim"
    use {
        "AckslD/nvim-neoclip.lua",
        requires = {
            {'nvim-telescope/telescope.nvim'},
        },
        config = function()
            require('neoclip').setup()
        end,
    }
    use 'numToStr/Comment.nvim'
    use 'NvChad/nvim-colorizer.lua'
    use 'fedepujol/move.nvim'

    -- Mainly for tmux
    use 'christoomey/vim-tmux-navigator'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use {
        'jose-elias-alvarez/null-ls.nvim',
        dependencies = {
            {
                "jay-babu/mason-null-ls.nvim",
                cmd = { "NullLsInstall", "NullLsUninstall" },
                opts = { handlers = {} },
            },
        },
        config = function() end
    }
    use "hrsh7th/nvim-cmp"
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    use {
        'j-hui/fidget.nvim',
        tag = "legacy"
    }

    -- Color Schemes
	use 'folke/tokyonight.nvim'
    use 'bluz71/vim-moonfly-colors'
    use({
        'catppuccin/nvim',
        config = function()
            vim.cmd("colorscheme catppuccin-mocha")
        end
    })
    use({
        'EdenEast/nightfox.nvim',
        config = function()
            -- vim.cmd("colorscheme carbonfox")
        end
    })
    
    -- LaTeX
    use 'lervag/vimtex'

    -- Git Stuff
    use({
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        requires = {
            "nvim-lua/plenary.nvim",
        },
    })
end)
