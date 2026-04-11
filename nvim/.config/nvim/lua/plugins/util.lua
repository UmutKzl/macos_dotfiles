vim.pack.add({
	"https://github.com/christoomey/vim-tmux-navigator",

	"https://github.com/folke/snacks.nvim",
})

require("Snacks").setup({
	bigfile = { enabled = true },
	explorer = { enabled = true },
	indent = { enabled = true },
	input = { enabled = true },
	picker = { enabled = true },
	notifier = { enabled = true },
	quickfile = { enabled = true },
	scope = { enabled = true },
	scroll = { enabled = true },
	statuscolumn = { enabled = true },
	words = { enabled = true },
	lazygit = { enabled = true },
})
