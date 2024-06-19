-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- Escape
keymap.set("i", "jj", "<Esc>", { noremap = false, desc = "Escape" })

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- Close all buffers
keymap.set("n", "<leader>ba", ":%bd<enter>", { desc = "Close all buffers" })

-- Normal mode comment toggle
-- keymap.set("n", "<leader>.", "gcc", { noremap = true, silent = true, desc = "Toggle comment" })

-- Visual mode comment toggle
-- keymap.set(
--   "v",
--   "<leader>.",
--   "<ESC><CMD>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
--   { desc = "Toggle comment" }
-- )

-- Set comment for insert mode to ctrl + period.
keymap.set(
  "i",
  "<C-.>",
  '<ESC><CMD>lua require("mini.comment").toggle_lines(vim.fn.line("."), vim.fn.line("."))<CR>i',
  { noremap = true, silent = true, desc = "Comment (Insert mode)" }
)

keymap.set("n", "<C-x>", LazyVim.ui.bufremove, { desc = "Close buffer" })
