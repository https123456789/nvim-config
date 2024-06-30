return {
    "RaafatTurki/hex.nvim",
    keys = {
        { "<leader>hx", "<cmd>HexToggle<CR>", desc = "Toggle Hex Edit Mode" }
    },
    opts = {} -- We need this so lazy will call `require("hex").setup()`
}
