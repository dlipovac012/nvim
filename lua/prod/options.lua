-- :help options

local options = {
	-- System settings
	-- ---------------

	backup = false,
	swapfile = false,
	writebackup = false,


	-- User settings
	-- -------------

	number = true,
	relativenumber = true,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
