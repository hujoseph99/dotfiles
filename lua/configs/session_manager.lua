local status_ok, session = pcall(require, "session_manager")
if not status_ok then
  return
end

session.setup({})

-- save session after saving buffer
vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
  group = config_group,
  callback = function ()
    if vim.bo.filetype ~= 'git'
      and not vim.bo.filetype ~= 'gitcommit'
      then session.autosave_session() end
  end
})
