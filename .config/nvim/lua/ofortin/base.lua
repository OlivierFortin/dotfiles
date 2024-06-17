
-- set tab to 4 spaces
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true
vim.g.editorconfig = true
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

-- Copy to clipboard
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true })
-- Paste from clipboard
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true })



vim.api.nvim_set_keymap('n','<leader><enter>', 'o<Esc>', { noremap = true })

-- Reload nvim config 
vim.api.nvim_set_keymap('n', '<leader>cr', ':luafile ~/.config/nvim/init.lua<CR>', { noremap = true, silent = true })

-- nohlsearch
vim.api.nvim_set_keymap('n', '<leader>nh', ':nohlsearch<CR>', { noremap = true, silent = true })

-- toggle nerdtree
vim.api.nvim_set_keymap('n', '<leader>nt', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

-- Open PDF of latex file
vim.api.nvim_set_keymap('n', '<leader>lp', ':LLPStartPreview<CR>', { noremap = true, silent = true })


-- move lines up and down 
vim.api.nvim_set_keymap('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<A-j>', '<Esc>:m .+1<CR>==gi', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<A-k>', '<Esc>:m .-2<CR>==gi', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-j>', ':m \'>+1<CR>gv=gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-k>', ':m \'<-2<CR>gv=gv', { noremap = true, silent = true })


-- quick save   
vim.api.nvim_set_keymap('n', '<leader>ww', ':w<CR>', { noremap = true, silent = true })

-- Telescope
vim.api.nvim_set_keymap('n', '<leader>tf', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tg', ':Telescope live_grep<CR>', { noremap = true, silent = true })

-- Toggle Precognition
vim.api.nvim_set_keymap('n', '<leader>tp', ':lua require("precognition").toggle()<CR>', { noremap = true, silent = true })




