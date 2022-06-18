local colorscheme = "material"

-- material
vim.g.material_style = "palenight"

-- tokyonight
-- vim.g.vscode_style = "dark"
-- vim.g.ayucolor = "dark"
-- vim.g.tokyonight_style = "night"

local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not ok then
  print("colorscheme not found: " .. colorscheme)
  return
end
