local hooks = require "ibl.hooks"

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "IblCustomIndentHighlight", { fg = "#313244" })
    vim.api.nvim_set_hl(0, "IblCustomScopeHighlight", { fg = "#45475a" })
end)

require("ibl").setup {
    enabled = true,
    indent = {
        smart_indent_cap = true,
        highlight = {
            "IblCustomIndentHighlight"
        }
    },
    scope = {
        enabled = true,
        show_start = false,
        show_end = false,
        highlight = {
            "IblCustomScopeHighlight"
        }
    }
}
