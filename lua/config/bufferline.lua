local ok, bl = pcall(require, "bufferline")
if not ok then
  print "bufferline is not installed."
  return
end

bl.setup {
  options = {
    show_buffer_close_icons = false,
    show_close_icon = false,
    diagnostics = "nvim_lsp",
  },
}
