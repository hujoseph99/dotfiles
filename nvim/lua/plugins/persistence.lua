return {
  "folke/persistence.nvim",
  event = "BufReadPre",
  keys = {
    { "<leader>qs", false },
    { "<leader>qS", false },
    { "<leader>ql", false },
    { "<leader>qd", false },
    {
      "<leader>pS",
      function()
        require("persistence").load()
      end,
      desc = "Restore Session",
    },
    {
      "<leader>ps",
      function()
        require("persistence").save()
        require("persistence").select()
      end,
      desc = "Select Session",
    },
    {
      "<leader>pl",
      function()
        require("persistence").load({ last = true })
      end,
      desc = "Restore Last Session",
    },
    {
      "<leader>pd",
      function()
        require("persistence").stop()
      end,
      desc = "Don't Save Current Session",
    },
  },
  init = function()
    vim.api.nvim_create_autocmd("User", {
      pattern = "PersistenceLoadPre",
      callback = function()
        Snacks.bufdelete.all()
      end,
    })
    vim.api.nvim_create_autocmd("User", {
      pattern = "PersistenceLoadPost",
      callback = function()
        local cwd = vim.fn.getcwd()
        vim.cmd("Neotree show filesystem left " .. cwd .. " reveal_force_cwd")
      end,
    })
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        if vim.fn.argc() == 0 then -- Only load the session if no files or directories are provided
          require("persistence").load() -- Load the last session
        end
      end,
      nested = true,
    })
  end,
}
