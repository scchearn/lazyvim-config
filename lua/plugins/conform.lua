return {
  "stevearc/conform.nvim",
  opts = {
    -- log_level = vim.log.levels.DEBUG,
    formatters_by_ft = {
      svg = { "svgo" },
    },
    formatters = {
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
