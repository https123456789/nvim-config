return {
    "nvim-telescope/telescope.nvim",
    branch = '0.1.x',
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    keys = {
        { "<leader>pf", "<cmd>lua require('telescope.builtin').find_files()<cr>",
            desc = "Find Files" },
        { "<leader>ps", "<cmd>lua require('telescope.builtin').live_grep()<cr>",
            desc = "Find String" },
    },
}
