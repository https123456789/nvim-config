vim.g.floaterm_titleposition = "center"

-- Opening in normal mode
vim.keymap.set("n", "<leader>tm", vim.cmd.FloatermNew)

-- Keymaps while in the terminal
vim.keymap.set("t", "<C-t>", vim.cmd.FloatermNew)
vim.keymap.set("t", "<C-Tab>", vim.cmd.FloatermNext)
vim.keymap.set("t", "<C-S-Tab>", vim.cmd.FloatermPrev)

-- To exit
vim.keymap.set("t", "<C-q>", function()
    local buf = vim.api.nvim_get_current_buf()
    vim.cmd(string.format("%dFloatermKill", buf))
    vim.cmd("FloatermShow")
end)
