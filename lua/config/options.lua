-- Show line numbers
vim.opt.number = true

-- Relative line numbers
vim.opt.relativenumber = true

-- Enable mouse suppport
vim.opt.mouse = "a"

-- Enable 23-bit RGB colors
vim.opt.termguicolors = true

-- Enable clipboard intergration where supported
vim.opt.clipboard = "unnamedplus"

-- Set indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Enable smart indentation
vim.opt.smartindent = true

-- Recognize Roblox Luau files
vim.filetype.add({
	extension = {
		luau = "luau",
	},
})
