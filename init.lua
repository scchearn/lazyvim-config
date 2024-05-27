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
