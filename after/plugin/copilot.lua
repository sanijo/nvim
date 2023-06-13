-- use this table to disable/enable filetypes
local copilot_filetypes = {
    xml = false,
}

-- since most are enabled by default you can turn them off
-- using this table and only enable for a few filetypes
-- vim.g.copilot_filetypes = { ["*"] = false, python = true }

vim.api.nvim_command('highlight CopilotSuggestion guifg=#AAAAAA ctermfg=8')
