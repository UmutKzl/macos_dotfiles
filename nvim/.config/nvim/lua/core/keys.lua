local map = vim.keymap.set

map("n", "<leader><leader>", function()
	require("snacks").picker.files()
end, { desc = "Find files" })

map("n", "<leader>lg", function()
	require("snacks").lazygit()
end, { desc = "LazyGit" })
