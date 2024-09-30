-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Set all JSON to JSON with comments
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.json",
  callback = function()
    vim.bo.filetype = "jsonc"
  end,
})
