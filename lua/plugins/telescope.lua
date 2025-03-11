return {
    "nvim-telescope/telescope.nvim",
    branch = '0.1.x',
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    keys = {
        { "<leader>pf", "<cmd>Telescope find_files no_ignore=true<cr>",
            desc = "Find Files" },
        { "<leader>pg", "<cmd>lua require('telescope.builtin').git_files()<cr>",
            desc = "Find Git Files" },
        { "<leader>ps", "<cmd>lua require('telescope.builtin').live_grep()<cr>",
            desc = "Find String" },
    },
}
