-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.o.cursorline = false
vim.api.nvim_exec([[ hi LineNr guifg=#aaaaaa]], false)

require('dap-go').setup {
  dap_configurations = {
    {
      type = "go",
      name = "Attach remote",
      mode = "remote",
      request = "launch",
	program = ".",
    },
  },
}
