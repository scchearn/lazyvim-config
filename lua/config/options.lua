-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- Text Wrapping
opt.textwidth = 80
opt.formatoptions = "jcroqlnt"
-- opt.linebreak = true
opt.breakindent = true
opt.breakindentopt = "shift:2"

-- Spelling
opt.spell = true
