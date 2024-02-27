return {
	'ThePrimeagen/harpoon',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		vim.keymap.set('n', '<leader>pu', function() require("harpoon.ui").toggle_quick_menu(); end,
		{ desc = 'Toggle poon menu' })
		vim.keymap.set('n', '<leader>pm', function() require("harpoon.mark").add_file() end, { desc = 'Mark poon file' })
		vim.keymap.set('n', '<leader>pn', function() require("harpoon.ui").nav_next() end, { desc = 'Next poon file' })
		vim.keymap.set('n', '<leader>pp', function() require("harpoon.ui").nav_prev() end, { desc = 'Previous poon file' })

		for i = 1, 10, 1 do
			vim.keymap.set('n', '<leader>p' .. i, function() require("harpoon.ui").nav_file(i) end,
			{ desc = 'Navigate to poon ' .. i })
		end
	end
}
