-- Disable Netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("options")

require('lazy-bootstrap')
require("lazy-nvim")

require("lsp")

require("theme")

require("keymap")
