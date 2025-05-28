return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      sql = { "sqlformatter" }, -- for SQL files
      svg = { "svgo" }, -- for SVG files
    },
    formatters = {
      -- SQL Formatter configuration
      sqlformatter = {
        command = "/home/sam/.local/share/pnpm/sql-formatter",
        args = { "--config", vim.fn.stdpath("config") .. "/formatters/sql/config.json" },
      },
      -- SVGO configuration
      svgo = {
        command = "/usr/bin/svgo",
        args = {
          "--input",
          "-",
          "--output",
          "-",
          "--pretty",
          "--config",
          vim.fn.stdpath("config") .. "/formatters/svgo/svgo.config.js",
        },
      },
    },
  },
}
