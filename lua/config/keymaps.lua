-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
-- Colemak nav
vim.api.nvim_set_keymap("n", "m", "h", { noremap = true })
-- vim.api.nvim_set_keymap("n", "n", "j", { noremap = true })
vim.keymap.set("n", "n", "j", { noremap = true })

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
-- vim.api.nvim_set_keymap('n', 'E', 'K', { noremap = true })
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
vim.api.nvim_set_keymap("n", "<C-,>", "<C-w>o", { noremap = true })


-- Quality of life
vim.api.nvim_set_keymap("n", "<M-n>", ':m +<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<M-e>", ':m --<CR>', { noremap = true })
-- vim.api.nvim_set_keymap("n", "<M-n>", '"zdd"zp', { noremap = true })
-- vim.api.nvim_set_keymap("n", "<M-e>", '"zddk"zP', { noremap = true })

vim.api.nvim_set_keymap("x", "<M-e>", "dkPV", { noremap = true })
vim.api.nvim_set_keymap("x", "<M-n>", "dpV", { noremap = true })

vim.api.nvim_set_keymap("n", "..", "o<Esc>k", { noremap = true })
vim.api.nvim_set_keymap("n", ",,", "O<Esc>j", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true })


-- fold function 
vim.api.nvim_set_keymap("n", "z()", "((zf))", { noremap = true })

--Close buffer without exiting
vim.api.nvim_set_keymap("n", "<C-q>", ":bp<bar>sp<bar>bn<bar>bd<CR>", { noremap = true })

-- Colors
-- vim.api.nvim_set_keymap("n", "<leader>cccl", ":colorscheme tokyonight-day<CR>:hi LineNr guifg=#aaaaaa<CR>", { noremap = true, desc="Light Theme"})
vim.api.nvim_set_keymap("n", "<leader>cctl", ":colorscheme shine<CR>:hi LineNr guifg=#aaaaaa<CR>", { noremap = true, desc="Light Theme"})
vim.api.nvim_set_keymap("n", "<leader>cctd", ":colorscheme tokyonight<CR>:hi LineNr guifg=#bbbbbb<CR>", { noremap = true, desc="Dark Theme"})
--
--Config files
vim.api.nvim_set_keymap("n", "<leader>ccd", ":cd ~/AppData/Local/nvim<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>cci", ":e ~/AppData/Local/nvim/init.lua<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>cck", ":e ~/AppData/Local/nvim/lua/config/keymaps.lua<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ccp", ":e ~/AppData/Local/nvim/lua/plugins/core.lua<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "<leader>ccmd", ":cd ~/.config/nvim<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ccmi", ":e ~/.config/nvim/init.lua<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ccmk", ":e ~/.config/nvim/lua/config/keymaps.lua<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ccmp", ":e ~/.config/nvim/lua/plugins/core.lua<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "<leader>ccr", ":so %<CR>", { noremap = true })


--- Telescope
vim.keymap.set("n", "<M-/>", function()
	-- You can pass additional configuration to telescope to change theme, layout, etc.
	require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 20,
		previewer = true,
	}))
end, { desc = "[/] Fuzzily search in current buffer" })
--
--
-- Frequent Projects
vim.api.nvim_set_keymap("n", "<leader>r1", ":cd ~/source/repos/Syncopotamus/Syncopotamus-go<CR>", { noremap = true })
vim.api.nvim_set_keymap( "n", "<leader>r2", ":cd K:/Dropbox/Carlos/Documents<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>r3", ":cd ~/source/repos/bikestash-go<CR>", { noremap = true })
