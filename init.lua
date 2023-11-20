-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd([[set foldmethod=indent]])

vim.g.minipairs_disable = true

-- REST Plugin Settings
vim.g.vrc_set_default_mapping = false
vim.g.vrc_response_default_content_type = "application/json"
vim.g.vrc_output_buffer_name = "REST Response"

-- Oil
require("oil").setup({
  win_options = {
    wrap = false,
    signcolumn = "no",
    cursorcolumn = false,
    foldcolumn = "0",
    spell = false,
    list = true,
    conceallevel = 3,
    concealcursor = "nvic",
  },
  keymaps = {
    ["g?"] = "actions.show_help",
    ["<CR>"] = "actions.select",
    ["<C-s>"] = false,
    ["<C-v>"] = "actions.select_vsplit",
    ["<C-h>"] = "actions.select_split",
    ["<C-t>"] = "actions.select_tab",
    ["<C-p>"] = "actions.preview",
    ["<C-c>"] = "actions.close",
    ["<C-l>"] = "actions.refresh",
    ["-"] = "actions.parent",
    ["_"] = "actions.open_cwd",
    ["`"] = "actions.cd",
    ["~"] = "actions.tcd",
    ["gs"] = "actions.change_sort",
    ["gx"] = "actions.open_external",
    ["g."] = false,
    ["H"] = "actions.toggle_hidden",
  },
})

-- require("catppuccin").setup({})

require("telescope").setup({
  defaults = {
    previewer = true,
    file_previewer = require("telescope.previewers").vim_buffer_cat.new,
    grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
    qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
    preview_cutoff = 1,
  },
})

require("lualine").setup({
  sections = {
    lualine_c = {
      {
        "filename",
        file_status = true, -- Displays file status (readonly status, modified status)
        newfile_status = false, -- Display new file status (new file means no write after created)
        path = 1,
        -- 0: Just the filename
        -- 1: Relative path
        -- 2: Absolute path
        -- 3: Absolute path, with tilde as the home directory
        -- 4: Filename and parent dir, with tilde as the home directory

        shorting_target = 50, -- Shortens path to leave 40 spaces in the window
        -- for other components. (terrible name, any suggestions?)
        symbols = {
          modified = "[+]", -- Text to show when the file is modified.
          readonly = "[-]", -- Text to show when the file is non-modifiable or readonly.
          unnamed = "[No Name]", -- Text to show for unnamed buffers.
          newfile = "[New]", -- Text to show for newly created file before first write
        },
      },
    },
  },
})

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

vim.o.cursorline = false
vim.api.nvim_exec([[ hi LineNr guifg=#aaaaaa]], false)
