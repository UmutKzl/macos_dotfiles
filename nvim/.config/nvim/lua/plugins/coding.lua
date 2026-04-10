vim.pack.add({
	"https://github.com/windwp/nvim-autopairs",

	"https://github.com/stevearc/conform.nvim",

	"https://github.com/folke/trouble.nvim",

	"https://github.com/folke/which-key.nvim",

	"https://github.com/saghen/blink.cmp",
	"https://github.com/rafamadriz/friendly-snippets",
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

-- blink.cmp {{{
require("blink.cmp").setup({
	keymap = { preset = "super-tab" },

	appearance = {
		nerd_font_variant = "normal",
	},

	completion = {
		documentation = { auto_show = false },
	},

	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},

	fuzzy = {
		implementation = "lua",
	},
})
-- }}}
