local ok, nt = pcall(require, "nvim-tree")
if not ok then
  print "nvim-tree is not installed."
  return
end

nt.setup {
  auto_reload_on_write = true,
  filters = {
    dotfiles = true,
  },
  view = {
    width = 40,
    mappings = {
      list = {
        { key = "<C-e>", action = "close" },
      },
    },
  },
}
