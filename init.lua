-- Disable Netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("options")
require("keymap")

require("lazy-nvim")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

require("nvim-tree").setup()

require("lsp")

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

