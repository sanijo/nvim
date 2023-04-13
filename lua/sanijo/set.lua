vim.opt.guicursor = ""

-- Set options
vim.opt.number = true                   -- display line numbers
vim.opt.relativenumber = true           -- display relative line numbers
vim.opt.clipboard:append("unnamed")     -- use unnamed clipboard for copy/paste
vim.opt.ruler = true                    -- display the ruler
vim.opt.showcmd = true                  -- show partial commands in the bottom right corner
vim.opt.swapfile = false                -- disable swap file creation
vim.opt.showmode = false                -- don't display the current mode
vim.opt.shortmess:append("c")           -- don't show completion messages
vim.opt.omnifunc = "syntaxcomplete#Complete" -- set Omni completion function

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.pastetoggle = "<F2>"         -- enable paste mode
vim.opt.wildmenu = true              -- use graphical auto complete menu
vim.opt.lazyredraw = true            -- redraw the screen only when necessary
vim.opt.showmatch = true             -- highlight matching brackets

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
vim.opt.textwidth = 80
vim.opt.wrap = true
vim.opt.linebreak = true -- go to new line

-- Define highlights inside an autocommand
vim.cmd([[augroup highlight_config]])
vim.cmd([[  autocmd!]])
vim.cmd([[  autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=#592929]])
vim.cmd([[  autocmd ColorScheme * match ExtraWhitespace /\s\+$/]])
vim.cmd([[  autocmd ColorScheme * highlight OverLength ctermbg=red ctermfg=white guibg=#592929]])
vim.cmd([[  autocmd ColorScheme * match OverLength /\%81v.\+/]])
vim.cmd([[augroup END]])
