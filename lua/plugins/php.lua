return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        intelephense = {
          filetypes = { "php" },
          root_dir = function(fname)
            local git_root = vim.fs.dirname(vim.fs.find(".git", {
              path = fname,
              upward = true,
            })[1])
            return git_root or vim.fn.getcwd()
          end,
        },
      },
    },
  },
}
