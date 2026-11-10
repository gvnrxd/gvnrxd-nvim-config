-- Load editor settings
require("config.options")

-- Load keymaps
require("config.keymaps")

-- Load plugins
require("config.plugins")

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

-- Load Telescope (file searching)
require("plugins.telescope")

-- Load Autopairs
require("plugins.autopairs")
