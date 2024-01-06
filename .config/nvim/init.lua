local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


plugins_list = {
	 'github/copilot.vim',
	 'folke/tokyonight.nvim',
	 'bling/vim-airline',
	 'junegunn/fzf.vim',
	 'preservim/nerdtree',
	 'ghifarit53/tokyonight-vim',
	 'tomasiser/vim-code-dark',
	 'hashivim/vim-terraform',
	 'christoomey/vim-tmux-navigator',
	 -- install tree sitter
	 'nvim-treesitter/nvim-treesitter',
	 'nvim-treesitter/nvim-treesitter-textobjects',
	 'nvim-treesitter/nvim-treesitter-refactor',
	 'lervag/vimtex',
	 {'xuhdev/vim-latex-live-preview' },
	 'neovim/nvim-lspconfig',
	 'williamboman/mason.nvim',
	 'williamboman/mason-lspconfig.nvim',
    'nvimtools/none-ls.nvim',
	 'jay-babu/mason-null-ls.nvim',
	 'dgagn/diagflow.nvim' ,
	 { 'j-hui/fidget.nvim', tag = 'legacy' },
	 'hrsh7th/nvim-cmp',
	 'hrsh7th/cmp-buffer',
	 'hrsh7th/cmp-path',
	 'hrsh7th/cmp-nvim-lsp',
	 'hrsh7th/cmp-nvim-lua',
	 { 'L3MON4D3/LuaSnip' },
	 'rafamadriz/friendly-snippets',
	 'saadparwaiz1/cmp_luasnip',
	 'VonHeikemen/lsp-zero.nvim',
	 'RaafatTurki/hex.nvim',
	 'tpope/vim-dadbod',
	 'kristijanhusak/vim-dadbod-ui',
	 'kristijanhusak/vim-dadbod-completion',
};


require("lazy").setup(plugins_list)
require("ofortin")
