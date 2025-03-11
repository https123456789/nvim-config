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

            local cmp = require("cmp")
            cmp.setup({
                sources = {
                    { name = "nvim_lsp" },
                    { name = "luasnip" }
                },
                mapping = {
                    ["<C-y>"] = cmp.mapping.confirm({ select = false }),
                    ["<C-k>"] = cmp.mapping.select_prev_item({behavior = 'select'}),
                    ["<C-j>"] = cmp.mapping.select_next_item({behavior = 'select'}),
                    ["<C-p>"] = cmp.mapping(function ()
                        if cmp.visible() then
                            cmp.select_prev_item({behavior = 'insert'})
                        else
                            cmp.complete()
                        end
                    end),
                    ["<C-n>"] = cmp.mapping(function ()
                        if cmp.visible() then
                            cmp.select_next_item({behavior = 'insert'})
                        else
                            cmp.complete()
                        end
                    end),
                },
                snippet = {
                    -- expand = function (args)
                    --     require("luasnip").lua_expand(args.body)
                    -- end
                }
            })
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
            lsp_zero.set_sign_icons({
                error = '✘',
                warn = '▲',
                hint = '⚑',
                info = '»'
            })

            lsp_zero.on_attach(function(client, bufnr)
                vim.keymap.set("n", "<leader>od", vim.lsp.buf.definition)
                vim.keymap.set("n", "<leader>i", vim.lsp.buf.hover)
                vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
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
                        checkOnSave = { command = "clippy" },
                    }
                }
            })
        end
    },
    {
        "j-hui/fidget.nvim",
        lazy = false,
        opts = {} -- Weird problem with omitting this line
    },
}
