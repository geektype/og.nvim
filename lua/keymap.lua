vim.keymap.set({ "n" }, "<leader>q", ":NvimTreeToggle<CR>")
vim.keymap.set({ "n" }, "<leader>p", ":BufferLinePick<CR>")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, {})

vim.keymap.set("n", "<leader>tt", ":Telescope colorscheme<CR>", {})
vim.keymap.set("n", "<leader>r", ":Telescope lsp_references<CR>", {})
vim.keymap.set("n", "<leader>s", ":Telescope lsp_document_symbols<CR>", {})

vim.keymap.set("n", "<leader>a", ":vsplit<CR>")
vim.keymap.set("n", "<leader>w", ":bd<CR>")
