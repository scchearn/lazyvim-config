-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

---@class ParserConfig
local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

parser_config.blade = {
  install_info = {
    url = "https://github.com/EmranMR/tree-sitter-blade",
    files = { "src/parser.c" },
    branch = "main",
  },
  filetype = "blade",
}

-- Set filetype for .blade.php files
vim.filetype.add({
  pattern = {
    [".*%.blade%.php"] = "blade",
  },
})

-- Create an augroup for setting the filetype
vim.api.nvim_create_augroup("BladeFiletype", { clear = true })
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.blade.php",
  command = "set filetype=blade",
  group = "BladeFiletype",
})

-- Set filetype for .cshtml and .razor files
vim.filetype.add({
  pattern = {
    [".*%.cshtml"] = "razor",
    [".*%.razor"] = "razor",
  },
})

-- Create an augroup for setting the filetype
vim.api.nvim_create_augroup("RazorFiletype", { clear = true })
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.cshtml", "*.razor" },
  command = "set filetype=razor",
  group = "RazorFiletype",
})

-- Setup mini.comment with custom configuration
require("mini.comment").setup({
  options = {
    custom_commentstring = function()
      -- Define a table of filetype-specific comment strings
      local comment_strings = {
        blade = "{{-- %s --}}",
        cs = "// %s",
      }
      -- Get the comment string for the current filetype, or fall back to the default
      return comment_strings[vim.bo.filetype] or vim.bo.commentstring
    end,
  },
})
-- require("mini.comment").setup({
--   options = {
--     custom_commentstring = function()
--       if vim.bo.filetype == "blade" then
--         return "{{-- %s --}}"
--       end
--       -- Fallback to the default commentstring
--       return vim.bo.commentstring
--     end,
--   },
-- })
--
-- require("mini.comment").setup({
--   options = {
--     custom_commentstring = function()
--       if vim.bo.filetype == "cs" then
--         return "// %s"
--       end
--       -- Fallback to the default commentstring
--       return vim.bo.commentstring
--     end,
--   },
-- })

-- Disable underline for specific Tree-sitter highlight groups
vim.cmd([[
  highlight! link @string.special.url.html String
]])

-- Setup Telescope with custom configuration
require("telescope").setup({
  defaults = {
    path_display = { "truncate" },
  },
})
