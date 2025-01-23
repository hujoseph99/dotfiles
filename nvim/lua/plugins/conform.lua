return {
  {
    "stevearc/conform.nvim",
    keys = {
      {
        "<leader>lF",
        function()
          require("conform").format({ async = true, timeout_ms = 3000 })
        end,
        mode = { "n", "v" },
        desc = "format",
      },
    },
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        fish = { "fish_indent" },
        sh = { "shfmt" },
        -- javascript = { "eslint_d", "prettierd" },
        -- typescript = { "eslint_d", "prettierd" },
        -- javascriptreact = { "eslint_d", "prettierd" },
        -- typescriptreact = { "eslint_d", "prettierd" },
      },
      default_formatter_opts = {
        lsp_format = "fallback"
      }
    },
  },
}
