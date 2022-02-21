local ok, null_ls = pcall(require, "null-ls")
if not ok then
  print "null-ls is not installed."
  return
end

null_ls.setup {
  sources = {
    null_ls.builtins.formatting.json_tool.with {
      extra_args = { "--indent=2" },
    },
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.prettier.with {
      prefer_local = "node_modules/.bin",
    },
    null_ls.builtins.formatting.shfmt.with {
      extra_args = { "-i", "2", "-ci" },
    },
  },
}
