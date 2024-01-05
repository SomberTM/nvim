return {
	'ThePrimeagen/harpoon',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		vim.keymap.set('n', '<leader>p', function() require("harpoon.ui").toggle_quick_menu(); end, { desc = 'Toggle harpoon menu' });
	end,
}
