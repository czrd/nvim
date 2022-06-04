local ok, nc = pcall(require, "nvim_comment")
if not ok then
  print "nvim-comment is not installed."
  return
end

nc.setup {
  comment_empty = false,
}
