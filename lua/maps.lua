-- Window management
vim.keymap.set("n", "<leader>c", "<C-w>c")
vim.keymap.set("n", "<leader>n", "<C-w>n")

-- Tab management
vim.keymap.set("n", "<leader>to", vim.cmd.tabnew)
vim.keymap.set("n", "<leader>tq", vim.cmd.tabclose)
vim.keymap.set("n", "<leader>tn", vim.cmd.tabnext)
vim.keymap.set("n", "<leader>tp", vim.cmd.tabprevious)
