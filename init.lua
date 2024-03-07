-- Disable Netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("options")
require("keymap")

require("lazy-nvim")

require("nvim-tree").setup()

require("lsp")

vim.test()

require("bufferline").setup{
    options = {
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                separator = true
            }
        }
    }
}

require("ibl").setup()
require('Comment').setup({
    toggler = {
        line = '<leader>/',
    },
})


require("theme")

