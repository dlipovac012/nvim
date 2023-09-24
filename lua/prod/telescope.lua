local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
	return
end

local builtin_status_ok, builtin = pcall(require, "telescope.builtin")
if not builtin_status_ok then
	return
end

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {}) 

telescope.setup({
	defaults = {
		prompt_prefix = "> ",
		selection_caret = "* ",
		path_display = { "smart" },
		file_ignore_patterns = {"node_modules", "env", "bin"},
		layout_strategy = 'horizontal',
		layout_config = { width = 0.7 },
	},
	mappings = {},
	pickers = {},
	extensions = {},
})


