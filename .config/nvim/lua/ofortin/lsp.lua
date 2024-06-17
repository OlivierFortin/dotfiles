vim.cmd [[colorscheme tokyonight]]


vim.opt.signcolumn = 'yes' -- Reserve space for diagnostic icons

local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
	'tsserver',
	'rust_analyzer',
	'html',
	'cssls',
	'texlab',
})




lsp.nvim_workspace()

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	if client.name == "eslint" then
		vim.cmd.LspStop('eslint')
		return
	end

	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
	vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
	vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
	vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
	vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
	vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
	vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
	vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
	vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
	vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, opts)
end)


local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-Space>'] = cmp.mapping.confirm({ select = true }),
	["<C-y>"] = cmp.mapping.complete(),
})




-- disable completion with tab
-- this helps with copilot setup
cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
		{ name = 'buffer' },
	},
	mapping = cmp_mappings
})

lsp.setup()


vim.diagnostic.config({
	underline = true,
	virtual_text = false,
	signs = true,
	update_in_insert = true,
})


require('diagflow').setup({
	max_width = 60, -- The maximum width of the diagnostic messages
	severity_colors = { -- The highlight groups to use for each diagnostic severity level
		error = "DiagnosticFloatingError",
		warning = "DiagnosticFloatingWarning",
		info = "DiagnosticFloatingInfo",
		hint = "DiagnosticFloatingHint",
	},
	gap_size = 1,
	scope = 'line', -- 'cursor', 'line'
})


-- Texlab setting for latex
require('lspconfig').texlab.setup({
	cmd = { "texlab" },
	filetypes = { "tex", "bib" },
	settings = {
		texlab = {
			auxDirectory = ".",
			bibtexFormatter = "texlab",
			build = {
				args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
				executable = "latexmk",
				onSave = true,
			},
			chktex = {
				onEdit = true,
				onOpenAndSave = true,
			},
			diagnosticsDelay = 300,
			DiagnosticFloatingError = { fg = "#ff0000" },
			forwardSearch = {
				args = {},
				executable = "zathura",
				onSave = true,
			},
			lint = {
				onChange = true,
			},
			latexFormatter = "latexindent",
			latexindent = {
				modifyLineBreaks = false,
			},
		},
	},
})

-- eslint setting for javascript
require('lspconfig').eslint.setup({
	cmd = { "eslint", "--stdin", "--stdin-filename", "%filepath", "--format", "json" },
	filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
	root_dir = require('lspconfig/util').root_pattern("package.json", ".eslintrc", ".eslintrc.js", ".eslintrc.json",
		".eslintrc.yaml", ".eslintrc.yml"),
	init_options = {
		-- setting to disable eslint formatting
		-- this is handled by prettier
		-- format = false,
	},
})

local tsConfig = require('nvim-treesitter.configs')
tsConfig.setup({
	-- Add a language of your choice
	ensure_installed = { "c", "python", "lua", "java", "javascript", "html" },
	sync_install = 'all', -- Install all parsers with :TSInstall all
	ignore_install = { "" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "" }, -- list of language that will be disabled
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = true, disable = { "yaml" } },
	rainbow = {
		enable = true,
		-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = nil, -- Do not enable for files with more than n lines, int
		-- colors = {}, -- table of hex strings
		-- termcolors = {} -- table of colour name strings
	}
})


require("mason-null-ls").setup({
	ensure_installed = { "stylua", "jq", "clang-check", "sqlfluff", "prettier" },
})
