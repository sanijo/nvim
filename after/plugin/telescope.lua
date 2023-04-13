local builtin = require('telescope.builtin')
-- below is example which uses vim builtin find_files
--vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sgf', require('telescope.builtin').git_files, { desc = '[S]earch [G]it [F]iles' })
vim.keymap.set('n', '<leader>sg', function()
	require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
