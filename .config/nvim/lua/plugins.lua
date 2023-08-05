
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	--  Install theme
	use 'folke/tokyonight.nvim'

	use 'bling/vim-airline'
	use 'junegunn/fzf.vim'
	use 'preservim/nerdtree'
	use 'ghifarit53/tokyonight-vim'
	use 'tomasiser/vim-code-dark'
	use 'hashivim/vim-terraform'
	use 'christoomey/vim-tmux-navigator'
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'lervag/vimtex'
	use {'xuhdev/vim-latex-live-preview' }


	-- LSP Support
	 
	use 'neovim/nvim-lspconfig'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'jose-elias-alvarez/null-ls.nvim'
	use 'jay-babu/mason-null-ls.nvim'
	use 'dgagn/diagflow.nvim' 
	-- figdet 
	use { 'j-hui/fidget.nvim', tag = 'legacy' }

	-- Autocompletion
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'

	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lua'

	--  Snippets
	use { 'L3MON4D3/LuaSnip' }
	use 'rafamadriz/friendly-snippets'
	use 'saadparwaiz1/cmp_luasnip'
	use 'VonHeikemen/lsp-zero.nvim'

	-- CTF Tools
	use 'RaafatTurki/hex.nvim'

	-- PlatformIO
	use 'normen/vim-pio'

	--  SQL
	use 'tpope/vim-dadbod'
	use 'kristijanhusak/vim-dadbod-ui'
	use 'kristijanhusak/vim-dadbod-completion'

end)

