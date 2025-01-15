return {
  "mfussenegger/nvim-dap",
  lazy = true,
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
  },
  keys = {
    {
      "<leader>rr",
      function()
        require("dap").toggle_breakpoint()
      end,
      desc = "Toggle breakpoint",
    },
    {
      "<leader>rc",
      function()
        require("dap").continue()
      end,
      desc = "Continue",
    },
    {
      "<C-'>",
      function()
        require("dap").step_over()
      end,
      desc = "Step over",
    },
    {
      "<C-;>",
      function()
        require("dap").step_into()
      end,
      desc = "Step into",
    },
    {
      "<C-:>",
      function()
        require("dap").step_out()
      end,
      desc = "Step out",
    },
  },
  config = function()
    require("dapui").setup()
  end,
}
