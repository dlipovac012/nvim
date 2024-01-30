vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

local status_ok, ntree = pcall(require, "nvim-tree")
if not status_ok then
	return
end

--local opts_status_ok, nvim_tree_opts = pcall(require, "nvim-tree-opts")
--if not opts_status_ok then
--    return
--end

--local tree_cb = nvim_tree_api.nvim_tree_callback

ntree.setup({
	sort_by = "case_sensitive",
	hijack_cursor = false,
	view = {
		width = 42,
	--mappings = {
	--custom_only = false,
	--list = {
        --    { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        --    { key = "h", cb = tree_cb "close_node" },
        --    { key = "v", cb = tree_cb "vsplit" },
        --    },
        --},
        --number = false,
        --relativenumber = false,
	},
	renderer = {
		group_empty = true,
		highlight_git = true,
	},
	filters = {
		dotfiles = false,
	},
})
