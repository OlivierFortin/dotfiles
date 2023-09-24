
-- set tab to 4 spaces
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true

-- set relavite line numbers
vim.wo.relativenumber = true
vim.wo.number = true
-- show hidden characters
vim.wo.list = true
vim.wo.listchars = "tab:»·,trail:·,extends:→,precedes:←"

vim.wo.number = true
vim.wo.relativenumber = true
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Load theme tokyo night 
require('tokyonight').colorscheme()

-- No wrap lines
vim.wo.wrap = false


-- set font to FiraCode
vim.cmd('set guifont=FiraCode\\ Nerd\\ Font:h12')
-- Remap
vim.api.nvim_set_keymap('n', 'Y', 'y$', { noremap = true })
vim.api.nvim_set_keymap('n','<leader><enter>', 'o<Esc>', { noremap = true })

-- Reload nvim config 
vim.api.nvim_set_keymap('n', '<leader>cr', ':luafile ~/.config/nvim/init.lua<CR>', { noremap = true, silent = true })

-- nohlsearch
vim.api.nvim_set_keymap('n', '<leader>nh', ':nohlsearch<CR>', { noremap = true, silent = true })

-- toggle nerdtree
vim.api.nvim_set_keymap('n', '<leader>nt', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

-- Open PDF of latex file
vim.api.nvim_set_keymap('n', '<leader>lp', ':LLPStartPreview<CR>', { noremap = true, silent = true })


-- configure Powerline
