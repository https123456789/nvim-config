local neotree = require("neo-tree")

neotree.setup({
    close_if_last_window = true,
    enable_git_status = true,
    enable_diagnostics = true,
    open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
    window = {
        position = "left",
        mappings = {
            ["l"] = "toggle_node",
            ["l"] = "open"
        }
    }
})

vim.cmd.Neotree()
