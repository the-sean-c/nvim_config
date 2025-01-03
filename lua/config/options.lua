-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.python3_host_prog = vim.fn.expand("/Users/seandaly/.pyenv/versions/3.13.0/bin/python3")

vim.opt.completeopt = "menu,menuone,noselect,noinsert"

vim.opt.winbar = "%=%m %f"

vim.g.autoformat = true
