vim.cmd [[
  hi! IndentBlanklineContextChar guifg=#737aa2 gui=nocombine

  " gray
  hi! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080
  " blue
  hi! CmpItemAbbrMatch guibg=NONE guifg=#569CD6
  hi! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6
  " light blue
  hi! CmpItemKindVariable guibg=NONE guifg=#9CDCFE
  hi! CmpItemKindInterface guibg=NONE guifg=#9CDCFE
  hi! CmpItemKindText guibg=NONE guifg=#9CDCFE
  " pink
  hi! CmpItemKindFunction guibg=NONE guifg=#C586C0
  hi! CmpItemKindMethod guibg=NONE guifg=#C586C0
  " front
  hi! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4
  hi! CmpItemKindProperty guibg=NONE guifg=#D4D4D4
  hi! CmpItemKindUnit guibg=NONE guifg=#D4D4D4

  hi! LspReferenceRead  ctermfg=231 guifg=#ffffff ctermbg=161 guibg=#d7005f
  hi! LspReferenceText  ctermfg=232 guifg=#ffffff ctermbg=161 guibg=#d7005f
  hi! LspReferenceWrite ctermfg=231 guifg=#ffffff ctermbg=161 guibg=#d7005f
]]
