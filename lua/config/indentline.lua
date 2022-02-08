local ok, indent_blankline = pcall(require, "indent_blankline")
if not ok then
  print "indent_blankline is not installed."
  return
end

indent_blankline.setup {
  show_current_context = true,
}

vim.cmd [[ highlight IndentBlanklineContextChar guifg=#737aa2 gui=nocombine ]]
