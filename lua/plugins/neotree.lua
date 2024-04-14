return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    keys = {
        { "<leader>nt", "<cmd>Neotree toggle<cr>", desc = "Neotree" }
    },
    opts = {
        close_if_last_window = true,
        open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
        window = {
            mappings = {
                ["l"] = "toggle_node",
                ["l"] = "open"
            }
        },
        filesystem = {
            filtered_items = {
                visible = true,
                hide_dotfiles = false,
                hide_gitignored = true,
                hide_by_name = { ".git" }
            },
        }
    }
}
