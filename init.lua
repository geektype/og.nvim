-- Disable Netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("options")

require("lazy-nvim")

require("nvim-tree").setup()

require("theme")
require("keymap")

