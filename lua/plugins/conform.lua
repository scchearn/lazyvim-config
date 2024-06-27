return {
  "stevearc/conform.nvim",
  opts = {
    -- log_level = vim.log.levels.DEBUG,
    formatters_by_ft = {
      sql = { "sqlformatter" },
      svg = { "svgo" },
      php = { "blade-formatter" },
      blade = { "blade-formatter" },
    },
    formatters = {
      sqlformatter = {
        command = vim.fn.stdpath("data") .. "/mason/packages/sql-formatter/node_modules/.bin/sql-formatter",
        args = { "--config", vim.fn.stdpath("config") .. "/formatters/sql/config.json" },
      },
      svgo = {
        command = "svgo",
        args = { "--input", "-", "--output", "-", "--pretty" },
      },
    },
  },
}
