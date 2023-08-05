require("luasnip.loaders.from_snipmate").lazy_load({paths = "~/.config/nvim/snippets"})
require("luasnip/loaders/from_vscode").lazy_load({paths = "~/.config/nvim/snippets"})

vim.keymap.set({"i", "s"}, "<C-l>", function()
    require("luasnip").jump(1)
end, {expr = true})

vim.keymap.set({"i", "s"}, "<C-j>", function()
    require("luasnip").jump(-1)
end, {expr = true})

