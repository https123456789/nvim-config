local builtin = require('telescope.builtin')
local actions = require("telescope.actions")

require("telescope").setup{
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = actions.close
            },
        },
    }
}

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
