-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- Close all buffers
keymap.set("n", "<leader>ba", ":bufdo bd<CR>", { desc = "Close all buffers" })

-- Normal mode comment toggle
-- keymap.set("n", "<leader>.", "gcc", { noremap = true, silent = true, desc = "Toggle comment" })

-- Visual mode comment toggle
-- keymap.set(
--   "v",
--   "<leader>.",
--   "<ESC><CMD>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
--   { desc = "Toggle comment" }
-- )
