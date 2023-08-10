---@type ChadrcConfig 
vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})

local M = {}
M.ui = {
    theme = 'gruvbox'
}
M.plugins = 'custom.plugins'
return M
