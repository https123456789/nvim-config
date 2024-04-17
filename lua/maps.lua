-- Window management
vim.keymap.set("n", "<leader>c", "<C-w>c")
vim.keymap.set("n", "<leader>n", "<C-w>n")
vim.keymap.set("n", "<C-Left>", "<C-w>H")
vim.keymap.set("n", "<C-Right>", "<C-w>L")
vim.keymap.set("n", "<C-Up>", "<C-w>K")
vim.keymap.set("n", "<C-Down>", "<C-w>J")

-- Tab management
vim.keymap.set("n", "<leader>to", vim.cmd.tabnew)
vim.keymap.set("n", "<leader>tq", vim.cmd.tabclose)
vim.keymap.set("n", "<leader>tn", vim.cmd.tabnext)
vim.keymap.set("n", "<leader>tp", vim.cmd.tabprevious)

-- LSP
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>i", vim.lsp.buf.hover)
