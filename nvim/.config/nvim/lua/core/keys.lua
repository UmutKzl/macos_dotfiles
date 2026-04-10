local map = vim.keymap.set

map("n", "<leader><leader>", function()
	Snacks.picker.files()
end, { desc = "Find files" })

map("n", "<leader>lg", function()
	Snacks.picker.grep()
end, { desc = "Live grep" })

map("n", "<leader>ic", function()
	Snacks.picker.icons()
end, { desc = "Select emojis" })

map("n", "<leader>ic", function()
	Snacks.picker.diagnostics()
end, { desc = "Diagnostics" })

map("n", "<leader>xx", function()
	require("Trouble").toggle("diagnostics")
end, { desc = "Trouble.nvim" })
