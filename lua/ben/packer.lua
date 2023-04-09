-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

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
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- LSP
	use 'neovim/nvim-lspconfig'
    use "hrsh7th/nvim-cmp"
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'

    use 'tpope/vim-vinegar'
    use 'sbdchd/neoformat'
    use 'xiyaowong/nvim-transparent'
    use {"akinsho/toggleterm.nvim", tag = '*'}
    use 'voldikss/vim-floaterm'

    -- Color Schemes
	use 'folke/tokyonight.nvim'
    use({
        'rose-pine/neovim',
        as = 'rose-pine'
    })
    use 'bluz71/vim-moonfly-colors'
    use({
        'EdenEast/nightfox.nvim',
        config = function()
            vim.cmd("colorscheme carbonfox")
        end
    })
end)
