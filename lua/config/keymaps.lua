-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "∆", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "˚", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("i", "∆", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "˚", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.keymap.set("v", "∆", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "˚", ":m '<-2<cr>gv=gv", { desc = "Move up" })

vim.keymap.set("n", "<M-Down>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<M-Up>", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("i", "<M-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "<M-Up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.keymap.set("v", "<M-Down>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "<M-Up>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- Quarto
local runner = require("quarto.runner")
vim.keymap.set("n", "<localleader>rc", runner.run_cell, { desc = "run cell", silent = true })
vim.keymap.set("n", "<localleader>ra", runner.run_above, { desc = "run cell and above", silent = true })
vim.keymap.set("n", "<localleader>rA", runner.run_all, { desc = "run all cells", silent = true })
vim.keymap.set("n", "<localleader>rl", runner.run_line, { desc = "run line", silent = true })
vim.keymap.set("v", "<localleader>r", runner.run_range, { desc = "run visual range", silent = true })
vim.keymap.set("n", "<localleader>RA", function()
  runner.run_all(true)
end, { desc = "run all cells of all languages", silent = true })

local quarto = require("quarto")
quarto.setup()
vim.keymap.set("n", "<leader>qp", quarto.quartoPreview, { desc = "quarto preview", silent = true, noremap = true })

-- Molten
vim.keymap.set("n", "<localleader>e", ":MoltenEvaluateOperator<CR>", { desc = "evaluate operator", silent = true })
vim.keymap.set(
  "n",
  "<localleader>os",
  ":noautocmd MoltenEnterOutput<CR>",
  { desc = "open output window", silent = true }
)
vim.keymap.set("n", "<localleader>rr", ":MoltenReevaluateCell<CR>", { desc = "re-eval cell", silent = true })
vim.keymap.set(
  "v",
  "<localleader>r",
  ":<C-u>MoltenEvaluateVisual<CR>gv",
  { desc = "execute visual selection", silent = true }
)
vim.keymap.set("n", "<localleader>oh", ":MoltenHideOutput<CR>", { desc = "close output window", silent = true })
vim.keymap.set("n", "<localleader>md", ":MoltenDelete<CR>", { desc = "delete Molten cell", silent = true })

vim.keymap.set("n", "<localleader>mx", ":MoltenOpenInBrowser<CR>", { desc = "open output in browser", silent = true })
