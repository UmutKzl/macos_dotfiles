vim.pack.add({
	"https://github.com/windwp/nvim-autopairs",

	"https://github.com/stevearc/conform.nvim",

	"https://github.com/folke/trouble.nvim",

	"https://github.com/folke/which-key.nvim",
})

-- nvim-autopairs {{{
require("nvim-autopairs").setup({})
-- }}}

-- conform.nvim {{{
require("conform").setup({
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		rust = { "rustfmt", lsp_format = "fallback" },
		javascript = { "prettierd", "prettier", stop_after_first = true },
	},
})
-- }}}

-- trouble.nvim {{{
require("Trouble").setup()
-- }}}

-- which-key.nvim {{{
require("which-key").setup({
	-- "classic", "modern", "helix"
	preset = "helix",

	spec = {},
})
-- }}}
