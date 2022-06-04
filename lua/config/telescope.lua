local ok, telescope = pcall(require, "telescope")
if not ok then
  print "telescope is not installed."
  return
end

telescope.setup {
  defaults = {
    winblend = 20,
  },
}
