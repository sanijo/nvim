require("toggleterm").setup{
	direction = "horizontal",
	size = 15,
	open_mapping = [[<leader>te]]
}

-- Function to set custom mappings for ToggleTerm
local function setup_toggleterm_mappings()
  vim.keymap.set('t', '<leader>j', '<C-\\><C-n><C-w>j', { noremap = true, silent = true })
  vim.keymap.set('t', '<leader>k', '<C-\\><C-n><C-w>k', { noremap = true, silent = true })
end
