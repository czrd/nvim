local colorscheme = "tokyonight"
vim.g.tokyonight_transparent = true

local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not ok then
  print("colorscheme not found: " .. colorscheme)
  return
end
