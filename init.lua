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

-- Setup mini.comment with custom configuration
require("mini.comment").setup({
  options = {
    custom_commentstring = function()
      -- Check if the filetype is 'blade'
      if vim.bo.filetype == "blade" then
        return "{{-- %s --}}"
      end
      -- Fallback to the default commentstring
      return vim.bo.commentstring
    end,
  },
})
