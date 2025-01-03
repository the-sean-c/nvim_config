-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Terminal configurations
vim.o.hidden = true -- Required to keep multiple buffers open
vim.o.shell = "/bin/bash" -- Or whatever your shell is (/bin/zsh, etc.)
