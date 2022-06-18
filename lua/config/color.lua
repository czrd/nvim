vim.g.material_style = "palenight"

local ok1, material = pcall(require, "material")
if not ok1 then
  print "material.nvim is not installed"
  return
end

material.setup {
  custom_highlights = {
    LspReferenceRead = { fg = "#ffffff", bg = "#d7005f" },
    LspReferenceText = { fg = "#ffffff", bg = "#d7005f" },
    LspReferenceWrite = { fg = "#ffffff", bg = "#d7005f" },
  },
}

local colorscheme = "material"
local ok2, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not ok2 then
  print("colorscheme not found: " .. colorscheme)
  return
end
