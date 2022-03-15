local colorscheme = "ayu"
vim.g.vscode_style = "dark"
vim.g.ayucolor = "dark"

local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not ok then
  print("colorscheme not found: " .. colorscheme)
  return
end
