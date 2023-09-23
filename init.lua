-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

--Config files
vim.api.nvim_set_keymap("n", "<leader>cc", ":e ~/AppData/Local/nvim/init.lua<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>cx", ":cd ~/AppData/Local/nvim<CR>", { noremap = true })
--
--Vim Config Shortcuts
vim.api.nvim_set_keymap("n", "<leader>cc", ":e ~/AppData/Local/nvim/init.lua<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>cx", ":cd ~/AppData/Local/nvim<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>so", ":so %<CR>", { noremap = true })
--
-- Colemak nav
vim.api.nvim_set_keymap("n", "m", "h", { noremap = true })
vim.api.nvim_set_keymap("n", "n", "j", { noremap = true })
vim.api.nvim_set_keymap("n", "e", "k", { noremap = true })
vim.api.nvim_set_keymap("n", "i", "l", { noremap = true })
vim.api.nvim_set_keymap("n", "h", "i", { noremap = true })
vim.api.nvim_set_keymap("n", "j", "n", { noremap = true })
vim.api.nvim_set_keymap("n", "k", "m", { noremap = true })
vim.api.nvim_set_keymap("n", "l", "e", { noremap = true })

vim.api.nvim_set_keymap("n", "L", "E", { noremap = true })
vim.api.nvim_set_keymap("n", "M", "H", { noremap = true })
vim.api.nvim_set_keymap("n", "N", "J", { noremap = true })
vim.api.nvim_set_keymap("n", "E", "i<CR><Esc>", { noremap = true })
--
-- vim.api.nvim_set_keymap('n', 'E', 'K', { noremap = true }) -- Uncomment if needed
vim.api.nvim_set_keymap("n", "I", "L", { noremap = true })
vim.api.nvim_set_keymap("n", "H", "I", { noremap = true })
vim.api.nvim_set_keymap("n", "J", "N", { noremap = true })
vim.api.nvim_set_keymap("n", "K", "M", { noremap = true })
vim.api.nvim_set_keymap("n", "L", "E", { noremap = true })

vim.api.nvim_set_keymap("v", "m", "h", { noremap = true })
vim.api.nvim_set_keymap("v", "n", "j", { noremap = true })
vim.api.nvim_set_keymap("v", "e", "k", { noremap = true })
vim.api.nvim_set_keymap("v", "i", "l", { noremap = true })
vim.api.nvim_set_keymap("v", "h", "i", { noremap = true })
vim.api.nvim_set_keymap("v", "j", "n", { noremap = true })
vim.api.nvim_set_keymap("v", "l", "e", { noremap = true })

-- Move between panels
vim.api.nvim_set_keymap("n", "<C-m>", "<C-w>h", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-n>", "<C-w>j", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-e>", "<C-w>k", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-i>", "<C-w>l", { noremap = true })

vim.keymap.set("t", "<C-m>m", "<C-\\><C-n><C-w>h", { silent = true, noremap = true })
vim.keymap.set("t", "<C-n>n", "<C-\\><C-n><C-w>j", { silent = true, noremap = true })
vim.keymap.set("t", "<C-e>e", "<C-\\><C-n><C-w>k", { silent = true, noremap = true })
vim.keymap.set("t", "<C-i>i", "<C-\\><C-n><C-w>l", { silent = true, noremap = true })

-- Quality of life
vim.api.nvim_set_keymap("n", "..", "o<Esc>k", { noremap = true })
vim.api.nvim_set_keymap("n", ",,", "O<Esc>j", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true })

-- Frequent Projects
vim.api.nvim_set_keymap("n", "<leader>1", ":cd ~/source/repos/Syncopotamus/Syncopotamus-go<CR>", { noremap = true })
vim.api.nvim_set_keymap(
  "n",
  "<leader>2",
  ":cd K:/Dropbox/Carlos/Documents/AutoHotkey/Function Keys<CR>",
  { noremap = true }
)
