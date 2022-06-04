local ok, ts = pcall(require, "nvim-treesitter.configs")
if not ok then
  print "nvim-treesitter is not installed"
  return
end

ts.setup {
  ensure_installed = "all",
  highlight = {
    enable = true,
  },
}
