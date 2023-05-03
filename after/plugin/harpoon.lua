-- Bindings

-- Mark the current file
vim.keymap.set("n", "<leader>hm", require("harpoon.mark").add_file)

-- Harpoon to the next file
vim.keymap.set("n", "<leader>hn", require("harpoon.ui").nav_next)

-- Harpoon to the previous file
vim.keymap.set("n", "<leader>hp", require("harpoon.ui").nav_prev)

-- Show the harpoon ui
vim.keymap.set("n", "<leader>hu", require("harpoon.ui").toggle_quick_menu)
