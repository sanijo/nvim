require('vscode').setup({
  disable_background = true,
  disable_nvimtree_bg = true
})

function ColorMyPencils(color)
	color = color or "vscode"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

	-- Make nvim-tree transparent
	vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NvimTreeFolderName", { bg = "none" })
	vim.api.nvim_set_hl(0, "NvimTreeEmptyFolderName", { bg = "none" })
	vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { bg = "none" })

	-- Make numbers bar transparent
	vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none" })

    -- Make startup-nvim transparent

end

ColorMyPencils()
