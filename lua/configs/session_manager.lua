local status_ok, session = pcall(require, "session_manager")
if not status_ok then
  return
end

local keymap = vim.keymap.set
keymap("n", "<leader>sa", ":SessionManager load_session<CR>")
keymap("n", "<leader>sd", ":SessionManager delete_session<CR>")
keymap("n", "<leader>ss", ":SessionManager save_current_session<CR>")

session.setup({
  autosave_only_in_session = true,
})

