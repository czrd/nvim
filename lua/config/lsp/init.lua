local ok, _ = pcall(require, "lspconfig")
if not ok then
  print "nvim-lspconfig is not installed."
  return
end

require "config.lsp.lsp-installer"
require("config.lsp.handlers").setup()
require "config.lsp.null-ls"
