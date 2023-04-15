vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  view = {
    adaptive_size = true
  }
})

vim.keymap.set('n', '<leader>pv', ':NvimTreeToggle<CR>', { noremap = true })
vim.keymap.set('n', '<leader>pV', ':NvimTreeFindFileToggle<CR>', { noremap = true })
