
-- set tab to 4 spaces
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4

-- set relavite line numbers
vim.wo.relativenumber = true
vim.wo.number = true

-- Load theme tokyo night 
require('tokyonight').colorscheme()

-- Remap
vim.api.nvim_set_keymap('n', 'Y', 'y$', { noremap = true })
vim.api.nvim_set_keymap('n','<leader><enter>', 'o<Esc>', { noremap = true })

-- Reload nvim config 
vim.api.nvim_set_keymap('n', '<leader>cr', ':luafile ~/.config/nvim/init.lua<CR>', { noremap = true, silent = true })

-- nohlsearch
vim.api.nvim_set_keymap('n', '<leader>nh', ':nohlsearch<CR>', { noremap = true, silent = true })

-- toggle nerdtree
vim.api.nvim_set_keymap('n', '<leader>nt', ':NERDTreeToggle<CR>', { noremap = true, silent = true })


