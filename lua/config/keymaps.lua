-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
vim.api.nvim_set_keymap("", "<C-l>", "<C-e>", { noremap = true })
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
vim.api.nvim_set_keymap("n", "M", "i <Esc>l", { noremap = true })
-- vim.api.nvim_set_keymap("n", "M", "lxh", { noremap = true })
vim.api.nvim_set_keymap("n", "E", "i<CR><Esc>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "I", "hx", { noremap = true })
vim.api.nvim_set_keymap("n", "I", "a <Esc>h", { noremap = true })

-- vim.api.nvim_set_keymap("n", "M", "H", { noremap = true })
vim.api.nvim_set_keymap("n", "N", "J", { noremap = true })
-- vim.api.nvim_set_keymap('n', 'E', 'K', { noremap = true })
-- vim.api.nvim_set_keymap("n", "I", "L", { noremap = true })

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

vim.api.nvim_set_keymap("s", "m", "h", { noremap = true })
vim.api.nvim_set_keymap("s", "n", "j", { noremap = true })
vim.api.nvim_set_keymap("s", "e", "k", { noremap = true })
vim.api.nvim_set_keymap("s", "i", "l", { noremap = true })
vim.api.nvim_set_keymap("s", "h", "i", { noremap = true })
vim.api.nvim_set_keymap("s", "j", "n", { noremap = true })
vim.api.nvim_set_keymap("s", "l", "e", { noremap = true })

vim.api.nvim_set_keymap("v", "m", "h", { noremap = true })
vim.api.nvim_set_keymap("v", "n", "j", { noremap = true })
vim.api.nvim_set_keymap("v", "e", "k", { noremap = true })
vim.api.nvim_set_keymap("v", "i", "l", { noremap = true })
vim.api.nvim_set_keymap("v", "h", "i", { noremap = true })
vim.api.nvim_set_keymap("v", "j", "n", { noremap = true })
vim.api.nvim_set_keymap("v", "l", "e", { noremap = true })

vim.api.nvim_set_keymap("s", "m", "h", { noremap = true })
vim.api.nvim_set_keymap("s", "n", "j", { noremap = true })
vim.api.nvim_set_keymap("s", "e", "k", { noremap = true })
vim.api.nvim_set_keymap("s", "i", "l", { noremap = true })
vim.api.nvim_set_keymap("s", "h", "i", { noremap = true })
vim.api.nvim_set_keymap("s", "j", "n", { noremap = true })
vim.api.nvim_set_keymap("s", "l", "e", { noremap = true })

-- Move between panels
vim.api.nvim_set_keymap("", "<C-m>", "<C-w>h", { noremap = true })
vim.api.nvim_set_keymap("", "<C-n>", "<C-w>j", { noremap = true })
vim.api.nvim_set_keymap("", "<C-e>", "<C-w>k", { noremap = true })
vim.api.nvim_set_keymap("", "<C-i>", "<C-w>l", { noremap = true })

vim.keymap.set("t", "<C-m>m", "<C-\\><C-n><C-w>h", { silent = true, noremap = true })
vim.keymap.set("t", "<C-n>n", "<C-\\><C-n><C-w>j", { silent = true, noremap = true })
vim.keymap.set("t", "<C-e>e", "<C-\\><C-n><C-w>k", { silent = true, noremap = true })
vim.keymap.set("t", "<C-i>i", "<C-\\><C-n><C-w>l", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<C-,>", "<C-w>o", { noremap = true })

--------- Convenience / Quality of Life
vim.api.nvim_set_keymap("", "<C-h>", "<C-i>", { noremap = true }) -- Jumplist

vim.api.nvim_set_keymap("n", "<leader>p", '"_diw"+P', { noremap = true }) -- Replace word under cursor
vim.api.nvim_set_keymap("v", "<leader>p", '"_d"+P', { noremap = true }) -- Replace selection
vim.api.nvim_set_keymap("n", "<C-S-x>", "10<C-x>", { noremap = true }) -- Increment number by 10
vim.api.nvim_set_keymap("n", "<C-S-a>", "10<C-a>", { noremap = true }) -- Decrement number by 10
vim.api.nvim_set_keymap("n", "<C-q>", ":bp<bar>sp<bar>bn<bar>bd<CR>", { noremap = true }) --Close buffer without exiting
vim.keymap.set("n", "<C-G>", ":norm G<cr>", { silent = true, noremap = true }) --Auto Scroll in Terminal

-------------------- Frequent Projects
vim.keymap.set(
  "n",
  "<leader>rd",
  ":lcd %:p:h<CR>:echo 'Dir set'<CR>",
  { noremap = true, desc = "Set working dir to current file" }
)

vim.api.nvim_set_keymap("n", "<leader>rr", ":cd ~/repos/<CR>", { noremap = true, desc = "Set dir to Repos" })
vim.api.nvim_set_keymap(
  "n",
  "<leader>rs",
  ":cd ~/repos/Syncopotamus-go<CR>",
  { noremap = true, desc = "Set to Syncopotamus backend" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>rt",
  ":cd ~/repos/Syncopotamus-svelte/<CR>",
  { noremap = true, desc = "Set to Syncopotamus frontend" }
)
-- vim.api.nvim_set_keymap("n", "<leader>rg", ":cd ~/repos/gcsit<C-d>", { noremap = true, desc = "Gcsit" })
vim.api.nvim_set_keymap("n", "<leader>rg", ":cd ~/repos/g<C-d>", { noremap = true, desc = "Gcsit" })
vim.api.nvim_set_keymap(
  "n",
  "<leader>ri",
  ":cd ~/source/repos/bikestash-go<CR>",
  { noremap = true, desc = "Set to Stash Bike go repo" }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>rD",
  ":cd K:/Dropbox/Carlos/Documents<CR>",
  { noremap = true, desc = "Set to Documents" }
)

------------ Move (By OS)
if vim.fn.has("mac") == 0 then
  vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("", "<C-s>", ":w<CR>", { noremap = true, silent = true })

  vim.api.nvim_set_keymap("", "<M-e>", ":m --<CR>", { noremap = true })
  vim.api.nvim_set_keymap("", "<M-n>", ":m +<CR>", { noremap = true })
else
  vim.api.nvim_set_keymap("i", "<D-s>", "<Esc>:w<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("", "<D-s>", ":w<CR>", { noremap = true, silent = true })

  vim.api.nvim_set_keymap("", "<M-D-e>", ":m --<CR>", { noremap = true })
  vim.api.nvim_set_keymap("", "<M-D-n>", ":m +<CR>", { noremap = true })
end

if vim.fn.has("win32") == 1 then
  vim.api.nvim_set_keymap("n", "<leader>ccd", ":cd ~/AppData/Local/nvim<CR>", { noremap = true })
  vim.api.nvim_set_keymap("n", "<leader>cci", ":e ~/AppData/Local/nvim/init.lua<CR>", { noremap = true })
  vim.api.nvim_set_keymap("n", "<leader>ccp", ":e ~/AppData/Local/nvim/lua/plugins/core.lua<CR>", { noremap = true })
  vim.api.nvim_set_keymap(
    "n",
    "<leader>ccl",
    ":e C:\\Users\\Carlos\\AppData\\Roaming\\lazygit\\config.yml<CR>",
    { noremap = true, desc = "Open LazyGit configuration" }
  )

  vim.api.nvim_set_keymap(
    "n",
    "<leader>cck",
    ":e ~/AppData/Local/nvim/lua/config/keymaps.lua<CR>",
    { noremap = true, desc = "Open Keymaps" }
  )
  vim.api.nvim_set_keymap(
    "n",
    "<leader>ccr",
    ":so ~/AppData/Local/nvim/lua/config/keymaps.lua<CR>",
    { noremap = true, desc = "Refresh Keymaps" }
  )
else --- Mac / Linux
  -------------------- Config files
  vim.api.nvim_set_keymap("n", "<leader>ccd", ":cd ~/.config/nvim<CR>", { noremap = true })
  vim.api.nvim_set_keymap("n", "<leader>cci", ":e ~/.config/nvim/init.lua<CR>", { noremap = true })
  vim.api.nvim_set_keymap("n", "<leader>cck", ":e ~/.config/nvim/lua/config/keymaps.lua<CR>", { noremap = true })
  vim.api.nvim_set_keymap("n", "<leader>ccp", ":e ~/.config/nvim/lua/plugins/core.lua<CR>", { noremap = true })
  vim.api.nvim_set_keymap(
    "n",
    "<leader>ccr",
    ":so ~/.config/nvim/lua/config/keymaps.lua<CR>",
    { noremap = true, desc = "Refresh Keymaps" }
  )

  if vim.fn.has("mac") == 1 then
    vim.api.nvim_set_keymap(
      "n",
      "<leader>ccl",
      ":e ~/Library/Application Support/lazygit/config.yml<CR>",
      { noremap = true, desc = "Open LazyGit configuration" }
    )
  else --- Linux
    vim.api.nvim_set_keymap(
      "n",
      "<leader>ccl",
      ":e ~/config/lazygit/config.yml<CR>",
      { noremap = true, desc = "Open LazyGit configuration" }
    )
  end
end

-- fold function
vim.api.nvim_set_keymap("x", "<M-e>", "dkPV", { noremap = true })
vim.api.nvim_set_keymap("x", "<M-n>", "dpV", { noremap = true })
vim.api.nvim_set_keymap("n", "zp", "$zf%", { noremap = true })
vim.api.nvim_set_keymap("n", "z()", "((zf))", { noremap = true })

vim.api.nvim_set_keymap("n", "..", 'o<Esc>"_cc<Esc>k', { noremap = true })
vim.api.nvim_set_keymap("n", ",,", 'O<Esc>"_cc<Esc>j', { noremap = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true })

-- Colors
vim.api.nvim_set_keymap(
  "n",
  "<leader>cctl",
  ":colorscheme github_light_tritanopia<CR>:hi LineNr guifg=#000000<CR>:hi LineNrAbove guifg=#000000<CR>>:hi LineNrBelow guifg=#000000<CR>:mod<CR>",
  -- ":colorscheme shine<CR>:hi LineNr guifg=#000000<CR>:hi LineNrAbove guifg=#000000<CR>>:hi LineNrBelow guifg=#000000<CR>",
  { noremap = true, desc = "Light Theme" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>cctd",
  ":colorscheme tokyonight<CR>:hi LineNr guifg=#dddddd<CR>:hi LineNrAbove guifg=#bbbbbb<CR>>:hi LineNrBelow guifg=#bbbbbb<CR>:mod<CR>",
  { noremap = true, desc = "Dark Theme" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>cctt",
  ":colorscheme tokyonight-day<CR>:hi LineNr guifg=#000000<CR>:hi LineNrAbove guifg=#000000<CR>>:hi LineNrBelow guifg=#000000<CR>:mod<CR>",
  -- ":colorscheme shine<CR>:hi LineNr guifg=#000000<CR>:hi LineNrAbove guifg=#000000<CR>>:hi LineNrBelow guifg=#000000<CR>",
  { noremap = true, desc = "Light Theme" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>cctn",
  ":colorscheme tokyonight-night<CR>:hi LineNr guifg=#dddddd<CR>:hi LineNrAbove guifg=#bbbbbb<CR>>:hi LineNrBelow guifg=#bbbbbb<CR>:mod<CR>",
  { noremap = true, desc = "Night Theme" }
)
--

--
-------------------- Plugins
-- Copilot
vim.keymap.set("", "<leader>u,", "<cmd>Copilot enable<cr>", { noremap = true, desc = "Enable Copilot" })
vim.keymap.set("", "<leader>u.", "<cmd>Copilot disable<cr>", { noremap = true, desc = "Disable Copilot" })

-- Harpoon
vim.keymap.set("", ",.", ":b#<CR>", { noremap = true, desc = "Go to prev buffer" })
vim.keymap.set("", ",h", function()
  require("harpoon.mark").add_file()
  vim.cmd("echo 'File Added to Harpoon'")
end, { noremap = true, desc = "Add file to Harpoon" })
vim.keymap.set("", ",f", function()
  require("harpoon.ui").toggle_quick_menu()
end, { noremap = true, desc = "See Harpoon quick menu" })

vim.keymap.set("", ",p", function()
  require("harpoon.ui").nav_prev()
end, { noremap = true, desc = "Go to prev harpoon" })
vim.keymap.set("", ",w", function()
  require("harpoon.ui").nav_next()
end, { noremap = true, desc = "Go to next harpoon" })

vim.keymap.set("", ",r", function()
  require("harpoon.ui").nav_file(1)
end, { noremap = true, desc = "Go to harpoon file 1" })
vim.keymap.set("", ",s", function()
  require("harpoon.ui").nav_file(2)
end, { noremap = true, desc = "Go to harpoon file 2" })
vim.keymap.set("", ",t", function()
  require("harpoon.ui").nav_file(3)
end, { noremap = true, desc = "Go to harpoon file 3" })
vim.keymap.set("", ",x", function()
  require("harpoon.ui").nav_file(4)
end, { noremap = true, desc = "Go to harpoon file 4" })
vim.keymap.set("", ",c", function()
  require("harpoon.ui").nav_file(5)
end, { noremap = true, desc = "Go to harpoon file 5" })
vim.keymap.set("", ",d", function()
  require("harpoon.ui").nav_file(6)
end, { noremap = true, desc = "Go to harpoon file 6" })
vim.keymap.set("", ",i", function()
  require("harpoon.ui").nav_file(7)
end, { noremap = true, desc = "Go to harpoon file 7" })
vim.keymap.set("", ",e", function()
  require("harpoon.ui").nav_file(8)
end, { noremap = true, desc = "Go to harpoon file 8" })
vim.keymap.set("", ",n", function()
  require("harpoon.ui").nav_file(9)
end, { noremap = true, desc = "Go to harpoon file 9" })

-- File Operrations
vim.keymap.set("", "<leader>fo", ":Oil<CR>", { noremap = true, desc = "Oil" })
vim.keymap.set("", "<leader>e", ":Neotree toggle reveal_force_cwd left<CR>", { noremap = true, desc = "Neotree" })
vim.keymap.set(
  "n",
  "<leader>fe",
  ":Neotree focus reveal_force_cwd float<CR>",
  { noremap = true, desc = "Neotree (Floating)" }
)
vim.keymap.set("n", "<leader>be", ":Neotree buffers left<CR>", { noremap = true, desc = "Neotree (buffers)" })
vim.keymap.set("n", "<leader>ge", ":Neotree git_status left<CR>", { noremap = true, desc = "Neotree (git files)" })

--Leap
vim.keymap.set("n", "s", function()
  require("leap").leap({ target_windows = { vim.fn.win_getid() } })
end)

vim.keymap.set("n", "S", function()
  require("leap").leap({
    target_windows = vim.tbl_filter(function(win)
      return vim.api.nvim_win_get_config(win).focusable
    end, vim.api.nvim_tabpage_list_wins(0)),
  })
end)

vim.keymap.set("n", "<F5>", function()
  vim.cmd(":lcd %:p:h") -- set working dir to current buffer
  require("dap-go").setup({
    dap_configurations = {
      {
        type = "go",
        name = "Attach remote",
        mode = "remote",
        request = "launch",
        program = ".",
      },
    },
  })
  vim.cmd("DapContinue")
end, { noremap = true, desc = "Start Debugger" })

vim.keymap.set("n", "<F6>", ":DapContinue<CR>", { noremap = true })

vim.keymap.set("n", "<F8>", ":DapStepOut<CR>", { noremap = true })
vim.keymap.set("n", "<F9>", ":DapToggleBreakpoint<CR>", { noremap = true, desc = "Toggle Breakpoint" })
vim.keymap.set("n", "<F10>", ":DapStepOver<CR>", { noremap = true })
vim.keymap.set("n", "<F11>", ":DapStepInto<CR>", { noremap = true })
-- vim.keymap.set('n', '<F9>', ":DapToggleBreakpoint<CR>", {noremap = true, desc = "Toggle Breakpoint"})

--- Telescope
vim.keymap.set(
  "n",
  "<leader><leader>",
  "<cmd>Telescope resume<CR>",
  { noremap = true, desc = "Resume last telescope search" }
)
vim.keymap.set(
  "n",
  "<leader>fs",
  "<cmd>Telescope lsp_document_symbols<CR>",
  { noremap = true, desc = "Search Sympols" }
)
vim.api.nvim_set_keymap("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", { noremap = true, desc = "See Keymaps" })

vim.keymap.set("n", "<M-/>", function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
    winblend = 20,
    previewer = true,
  }))
end, { desc = "[/] Fuzzily search in current buffer" })

-- vim.api.nvim_set_keymap("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { noremap = true , desc="Toggle Breakpoint"})
-------------------- Aerial
vim.keymap.set("n", "<leader>fj", "<cmd>Telescope jumplist<CR>", { noremap = true, desc = "Jumplist" })
vim.keymap.set("n", "<leader>fn", "<cmd>Telescope aerial<CR>", { noremap = true, desc = "Search Symbols" })
vim.keymap.set("n", "<leader>fm", ":AerialNavToggle<CR>", { noremap = true, desc = "Navigate Symbols" })
vim.keymap.set("n", "<leader>fa", ":AerialToggle<CR>", { noremap = true, desc = "Toggle Aerial Sidebar" })

-- vim.api.nvim_set_keymap("n", ",", ":cd ~/source/repos/bikestash-go<CR>", { noremap = true , desc="Set to Stash Bike go repo" })
--

-------- REST
vim.keymap.set("n", "<leader>cx", ":call VrcQuery()<cr>", { noremap = true, desc = "Execute REST request" })
