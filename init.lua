-- Disable neovims builts in file-browser
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Load editor settings
require("config.options")

-- Load keymaps
require("config.keymaps")

-- Load plugins
require("config.plugins")

-- Load Nvimtree
require("plugins.nvim-tree")

-- Load colorscheme
require("config.colorscheme")

-- Load Lualine
require("plugins.lualine")

-- Load Treesitter
require("plugins.treesitter")

-- Load LSP
require("plugins.lsp")

-- Load CMP (autocompletion)
require("plugins.cmp")

-- Load Conform (auto formatting)
require("plugins.conform")

-- Load linting (Lua and Luau)
require("plugins.lint")

-- Load Telescope (file searching)
require("plugins.telescope")

-- Load Autopairs
require("plugins.autopairs")
