vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Explore files" })

vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm direction=tab<CR>", { desc = "Open Terminal" })
vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<CR>", { desc = "Open Terminal Horizontally" })

vim.keymap.set("n", "<leader>fc", vim.lsp.buf.format, { desc = "Format Code" })

vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to the Definition" })
vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, { desc = "Go to the Declaration" })
vim.keymap.set("i", "<C-K>", vim.lsp.buf.signature_help, { desc = "View a symbol's signature" })

vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename the symbol" })

vim.keymap.set("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "Open diagnostics location list" })

local telescope_builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, { desc = "Find a file" })
vim.keymap.set("n", "<leader>fs", telescope_builtin.grep_string, { desc = "Find a string" })
