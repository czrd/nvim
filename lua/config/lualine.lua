local ok, ll = pcall(require, "lualine")
if not ok then
  print "lualine is not installed"
  return
end

ll.setup()
