return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
        local harpoon = require("harpoon")
        harpoon.setup()

        -- Setup keymaps
        vim.keymap.set(
            "n",
            "<leader>hu",
            function ()
                harpoon.ui:toggle_quick_menu(harpoon:list())
            end
        )
        vim.keymap.set("n", "<leader>hm", function() harpoon:list():add() end)
        vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end)
        vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end)
    end
}
