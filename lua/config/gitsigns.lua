local ok, gs = pcall(require, "gitsigns")
if not ok then
  print "gitsigns is not installed."
  return
end

gs.setup()
