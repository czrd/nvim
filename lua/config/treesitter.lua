local ok, ts_config = pcall(require, "nvim-treesitter.configs")
if not ok then
  print "nvim-treesitter is not installed."
  return
end

ts_config.setup {
  ensure_installed = "maintained",
  sync_install = false,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}
