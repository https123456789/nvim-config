-- Context highlight
vim.cmd("highlight IndentBlanklineContextChar guifg=#FFFFFF gui=nocombine")
vim.cmd("highlight IndentBlanklineContextStart guisp=#FFFFFF gui=underline")

-- Alternating Greys
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#333333 gui=nocombine]]

require("indent_blankline").setup {
    show_current_context = true,
    --show_current_context_start = true,
    use_treesitter = true,
    char_highlight_list = {
        "IndentBlanklineIndent1",
    },
}
