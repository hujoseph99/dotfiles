local status_ok, ibl = pcall(require, "ibl")
if not status_ok then
  return
end

ibl.setup({
  scope = {
     show_start = false,
     show_end = false,
  }
})
