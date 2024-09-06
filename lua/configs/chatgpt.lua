local cmp_status_ok, chatgpt = pcall(require, "chatgpt")
if not cmp_status_ok then
  return
end

chatgpt.setup({})
