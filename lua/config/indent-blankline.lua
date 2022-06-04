local ok, ib = pcall(require, "indent_blankline")
if not ok then
  print "indent-blankline is not installed."
  return
end

ib.setup {
  show_current_context = true,
}
