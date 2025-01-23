return {
  "ibhagwan/fzf-lua",
  keys = {
    { "<leader>fF", LazyVim.pick("files"), desc = "Find Files (cwd)" },
    { "<leader>ff", LazyVim.pick("files", { root = false }), desc = "Find Files (Root Dir)" },
    { "<leader>fg", LazyVim.pick("live_grep", { root = false }), desc = "Grep (cwd)" },
    { "<leader>fG", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
    { "<leader>fo", "<cmd>FzfLua git_files<cr>", desc = "Find Files (git-files)" },
    { "<leader>/", false },
  }
}
