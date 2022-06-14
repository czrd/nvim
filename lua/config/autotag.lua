local ok, at = pcall(require, "nvim-ts-autotag")
if not ok then
  print "nvim-ts-autotag is not installed."
  return
end

at.setup()
