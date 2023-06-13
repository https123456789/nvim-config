require("catppuccin").setup({
    flavour = "mocha",
    background = {
        light = "late",
        dark = "mocha"
    },
    transparent_background = false
})

function ColorMyPencils(color)
	color = color or "catppuccin-mocha"
	vim.cmd.colorscheme(color)

	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
