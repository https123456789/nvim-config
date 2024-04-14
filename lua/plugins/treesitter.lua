return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    build = ":TSUpdate",
    setup = function ()
        local configs = require("treesitter.configs")
        configs.setup({
            ensure_installed = {
                "c",
                "cpp",
                "javascript",
                "rust",
                "vim",
                "vimdoc",
            },
            auto_install = true,
        })
    end
}
