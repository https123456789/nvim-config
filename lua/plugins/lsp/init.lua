return {
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        init = function ()
            vim.g.lsp_zero_extend_cmp = 0
            vim.g.lsp_zero_extend_lspconfig = 0
        end
    },

    -- Autocomplete
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            { "L3MON4D3/LuaSnip" }
        },
        config = function ()
            local lsp_zero = require('lsp-zero')
            lsp_zero.extend_cmp()
        end
    },

    -- LSP
    {
        "neovim/nvim-lspconfig",
        cmd = { "LspInfo", "LspStart", "LspStop", "LspRestart" },
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            { "hrsh7th/cmp-nvim-lsp" },
            { "williamboman/mason.nvim", setup = true  },
            { "williamboman/mason-lspconfig.nvim" }
        },
        config = function ()
            local lsp_zero = require("lsp-zero")
            lsp_zero.extend_lspconfig()

            lsp_zero.on_attach(function(client, buffer)
                lsp_zero.default_keymaps({ buffer = buffer })
            end)

            -- mason.nvim must be setup before mason-lspconfig
            require("mason").setup({})

            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls" },
                handlers = {
                    function (server_name)
                        require("lspconfig")[server_name].setup({})
                    end,
                }
            })

            -- Other LSP servers have been installed externally from mason such as rust_analyzer
            -- via rustup. We have to manually call setup for these servers.
            local lspconfig = require("lspconfig")
            lspconfig.rust_analyzer.setup({
                settings = {
                    ["rust-analyzer"] = {
                        checkOnSave = { command = "clippy" }
                    }
                }
            })
        end
    },
    {
        "j-hui/fidget.nvim",
        lazy = false,
        opts = {} -- Weird problem with omitting this line
    }
}
