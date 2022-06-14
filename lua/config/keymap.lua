local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Modes:
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Leader key
vim.g.mapleader = " "
keymap("", "<Space>", "<Nop>", opts)

-- window navigation
keymap("n", "<C-j>", "<C-w><C-j>", opts)
keymap("n", "<C-k>", "<C-w><C-k>", opts)
keymap("n", "<C-l>", "<C-w><C-l>", opts)
keymap("n", "<C-h>", "<C-w><C-h>", opts)

-- resizing window
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- tagbar
keymap("n", "T", ":SymbolsOutline<CR>", opts)

-- file explorer
keymap("n", "<C-e>", ":NvimTreeFindFileToggle<CR>", opts)
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<C-p>", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)

-- navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>x", ":bdelete!<CR>", opts)

-- indent
keymap("v", ">", ">gv", opts)
keymap("v", "<", "<gv", opts)

-- git
keymap("n", "<C-g>", "<cmd>lua _TOGGLE_LAZYGIT()<CR>", opts)

-- trouble
keymap("n", "<C-t>", "<cmd>TroubleToggle<CR>", opts)

-- goto
keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
keymap("n", "gd", "<cmd>lua require('telescope.builtin').lsp_definitions()<CR>", opts)
keymap("n", "gi", "<cmd>lua require('telescope.builtin').lsp_implementations()<CR>", opts)
keymap("n", "gr", "<cmd>lua require('telescope.builtin').lsp_references()<CR>", opts)

-- actions
keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
keymap("n", "<leader>rn", "<cmd>lua require('lspsaga.rename').rename()<CR>", opts)
keymap("n", "<leader>ca", "<cmd>lua require('lspsaga.codeaction').code_action()<CR>", opts)

-- diagnostic
keymap("n", "<leader>f", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
keymap("n", "[g", "<cmd>lua require('lspsaga.diagnostic').navigate('prev')()<CR>", opts)
keymap("n", "]g", "<cmd>lua require('lspsaga.diagnostic').navigate('next')()<CR>", opts)
keymap("n", "gl", "<cmd>lua require('lspsaga.diagnostic').show_line_diagnostics()<CR>", opts)
keymap("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)

-- format
vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
vim.cmd [[
  augroup LspFormatting
    autocmd!
    autocmd BufWritePre,FileWritePre * lua vim.lsp.buf.formatting_sync()
  augroup END
]]
