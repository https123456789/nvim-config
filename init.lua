-- Bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Load vim settings
require("set")

-- Load lazy
require("lazy").setup({
    { import = "plugins" },
}, {})
vim.keymap.set("n", "<leader>lz", vim.cmd.Lazy)

-- Load any extra keymaps
require("maps")

vim.filetype.add({
    pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})

-- Load LSP
vim.lsp.enable('luals')
