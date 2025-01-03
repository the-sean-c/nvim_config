return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      textobjects = {
        move = {
          enable = true,
          set_jumps = false,
          goto_next_start = {
            ["]b"] = { query = "@code_cell.inner", desc = "next code block" },
          },
          goto_previous_start = {
            ["[b"] = { query = "@code_cell.inner", desc = "previous code block" },
          },
        },
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["ib"] = { query = "@code_cell.inner", desc = "in block" },
            ["ab"] = { query = "@code_cell.outer", desc = "around block" },
          },
        },
        swap = {
          enable = true,
          swap_next = {
            ["<leader>sbl"] = "@code_cell.outer",
          },
          swap_previous = {
            ["<leader>sbh"] = "@code_cell.outer",
          },
        },
      },
    },
  },
}
