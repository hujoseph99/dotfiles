return {
  "folke/persistence.nvim",
  event = "BufReadPre",
  opts = {
    branch = false,
    need = 0,
  },
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
      "<cmd>SessionSwitch<cr>",
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
    -- List all session files and let the user pick one
    vim.api.nvim_create_user_command("SessionSwitch", function()
      local Config = require("persistence.config")
      local uv = vim.uv or vim.loop

      local items = {}
      local have = {} ---@type table<string, boolean>
      for _, session in ipairs(require("persistence").list()) do
        if uv.fs_stat(session) then
          local file = session:sub(#Config.options.dir + 1, -5)
          local dir, branch = unpack(vim.split(file, "%%", { plain = true }))
          dir = dir:gsub("%%", "/")
          if jit.os:find("Windows") then
            dir = dir:gsub("^(%w)/", "%1:/")
          end
          if not have[dir] then
            have[dir] = true
            items[#items + 1] = { session = session, dir = dir, branch = branch }
          end
        end
      end
      vim.ui.select(items, {
        prompt = "Select a session: ",
        format_item = function(item)
          return vim.fn.fnamemodify(item.dir, ":p:~")
        end,
      }, function(item)
        if item then
          local open_buffers = vim.fn.len(vim.fn.getbufinfo({ buflisted = 1 }))
          if open_buffers > 2 then
            require("persistence").save()
          end
          vim.fn.chdir(item.dir)
          require("persistence").load()
        end
      end)
    end, { desc = "Save & switch session using FZF" })

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
  end,
}
