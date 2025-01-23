local status_ok, neotree = pcall(require, "neotree")
if not status_ok then
  return
end

neotree.setup()
