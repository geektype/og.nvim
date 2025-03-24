-- Set leader to <space>
vim.g.mapleader = " "

-- Hybrid Line Numbering
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.mouse = "a"

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false

-- Tab/spacing

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.termguicolors = true
vim.opt.wrap = false

vim.opt.completeopt = { "menu", "menuone", "noselect" }

vim.opt.laststatus = 3
