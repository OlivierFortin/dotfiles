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
    { 'xuhdev/vim-latex-live-preview' },
    'neovim/nvim-lspconfig',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'nvimtools/none-ls.nvim',
    'jay-babu/mason-null-ls.nvim',
    'dgagn/diagflow.nvim',
    { 'j-hui/fidget.nvim',            tag = 'legacy' },
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
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
   },
    -- install telescope
    'nvim-lua/popup.nvim',
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    "tris203/precognition.nvim",
    --event = "VeryLazy",
    config = {
    startVisible = true,
    showBlankVirtLine = true,
    highlightColor = { link = "Comment" },
    hints = {
          Caret = { text = "^", prio = 2 },
          Dollar = { text = "$", prio = 1 },
          MatchingPair = { text = "%", prio = 5 },
          Zero = { text = "0", prio = 1 },
          w = { text = "w", prio = 10 },
          b = { text = "b", prio = 9 },
          e = { text = "e", prio = 8 },
          W = { text = "W", prio = 7 },
          B = { text = "B", prio = 6 },
          E = { text = "E", prio = 5 },
     },
     gutterHints = {
         G = { text = "G", prio = 10 },
         gg = { text = "gg", prio = 9 },
         PrevParagraph = { text = "{", prio = 8 },
         NextParagraph = { text = "}", prio = 8 },
     },
    },
};


require("lazy").setup(plugins_list)
require("ofortin")
