return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		opts = {},
	},

	{
		"neovim/nvim-lspconfig",
	},

	{
		"mason-org/mason.nvim",
		opts = {},
	},

	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls", "basedpyright" },
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter").install({ "lua", "python", "html" })
		end,
	},

	{
		"windwp/nvim-ts-autotag",
		opts = {},
	},

	{
		"mfussenegger/nvim-lint",
		config = function()
			require("lint").linters_by_ft = {
				markdown = { "vale" },
				lua = { "luacheck" },
				sh = { "shellcheck" },
				bash = { "shellcheck" },
				python = { "pylint" },
			}
			vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
				callback = function()
					require("lint").try_lint()
				end,
			})
		end,
	},

	{
		"saghen/blink.cmp",
		dependencies = { "rafamadriz/friendly-snippets" },

		version = "1.*",
		opts = {
			-- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
			-- 'super-tab' for mappings similar to vscode (tab to accept)
			-- 'enter' for enter to accept
			-- 'none' for no mappings
			--
			keymap = { preset = "super-tab" },

			appearance = {
				nerd_font_variant = "mono",
			},

			completion = { documentation = { auto_show = false } },

			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},

			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
		opts_extend = { "sources.default" },
	},

	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},

	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				rust = { "rustfmt", lsp_format = "fallback" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		},
	},
}
