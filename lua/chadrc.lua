-- This file needs to have the same structure as nvconfig.lua
-- See https://github.com/NvChad/NvChad for the latest configuration examples

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "everforest", -- make sure this theme is installed and supports these options

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true }, -- Ensures treesitter and other comment highlights are also italic
  },
}

return M
