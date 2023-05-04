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
    },
    filesystem = {
        filtered_items = {
            visible = true,
            hide_dotfiles = true,
            hide_gitignored = true,
        },
    }
})

-- Open the file explorer if no specific file is opened
local arg = vim.fn.argv()[1]
if arg == nil or arg == "." then
    -- Save the current window and buffer
    local win = vim.api.nvim_get_current_win()
    local buf = vim.api.nvim_get_current_buf()

    -- Open Neotree
    vim.cmd.Neotree()

    -- Switch focus back to the starting window and buffer
    vim.api.nvim_set_current_win(win)
    vim.api.nvim_set_current_buf(buf)
end
