
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader>pv', ':NvimTreeToggle<CR>', { noremap = true })

-- Move block up and down when highlighted
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z") -- append line from below with a space
-- half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- keep search terms in the middle e.g. /vim
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- when yank a block and paste over other block, original yank stays in the
-- buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- copy to system clipboard so that when yanked it can be pasted anywhere else
-- not just in vim
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete the current line or selected text and move the cursor to the
-- beginning of the next line
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- move through quickfix list
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replace the word that you are on currently
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- make bash script executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/sanijo/packer.lua<CR>");
-- lol
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

function TrimWhiteSpace()
  vim.api.nvim_command('%s/\\s\\+$//e')
end

-- Define a mapping for calling the trim_whitespace function
vim.keymap.set('n', '<F1>', ':call v:lua.trim_whitespace()<CR>', { noremap = true })

-- Set options to open splits below and to the right
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Map <leader>ev to open a new vertical split on the right side
vim.keymap.set('n', '<leader>ev', ':vnew<CR>', { noremap = true })

-- Map <leader>eh to open a new horizontal split on the bottom
vim.keymap.set('n', '<leader>eh', ':new<CR>', { noremap = true })


