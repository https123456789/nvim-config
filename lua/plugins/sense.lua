return {
    "boltlessengineer/sense.nvim",
    init = function ()
        vim.g.sense_nvim = {
            presets = {
                virtualtext = {
                    max_width = 0.4
                }
            }
        }
    end
}
