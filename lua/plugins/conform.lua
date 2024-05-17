return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      sql = { "sqlformatter" },
      svg = { "svgo" },
      php = { "blade-formatter" },
    },
    formatters = {
      sqlformatter = {
        command = vim.fn.stdpath("data") .. "/mason/packages/sql-formatter/node_modules/.bin/sql-formatter",
        args = { "--config", vim.fn.stdpath("data") .. "/sqlformatter.json" },
      },
      svgo = {
        command = "svgo",
        args = { "--input", "-", "--output", "-", "--pretty" },
      },
    },
  },
}
