vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Terminal
vim.keymap.set("n", "<leader>tn", vim.cmd.FloatermNew)
vim.keymap.set("n", "<leader>tt", vim.cmd.FloatermToggle)

-- Windows
vim.keymap.set("n", "<leader>c", "<C-w>c")
vim.keymap.set("n", "<leader>n", "<C-w>n")
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true })
vim.keymap.set("n", "<C-Left>", "<C-w>H")
vim.keymap.set("n", "<C-Right>", "<C-w>L")
vim.keymap.set("n", "<C-Up>", "<C-w>K")
vim.keymap.set("n", "<C-Down>", "<C-w>J")

-- NeoTree
vim.keymap.set("n", "<leader>nt", vim.cmd.Neotree)
