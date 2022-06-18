local ok, ns = pcall(require, "scrollbar")
if not ok then
  print "nvim-scrollbar is not installed"
  return
end

ns.setup {
  show_in_active_only = true,
}
