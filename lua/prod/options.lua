-- :help options

local options = {
	-- System settings
	-- ---------------

	backup = false,
	swapfile = false,
	writebackup = false,
	cmdheight = 1,
	clipboard = "unnamedplus",
	undofile = true,
	fileencoding = "utf-8",
	conceallevel = 0,


	-- -------------
	-- User settings
	-- -------------

	number = true,
	relativenumber = true,
	showmode = false,
	pumheight = 10,
	smartcase = true,
	smartindent = true,
	--showtabline = 2,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
