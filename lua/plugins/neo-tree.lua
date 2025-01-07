return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        commands = {
          create_file_with_setup = function(state)
            local node = state.tree:get_node()
            local parent_path = node.type == "directory" and node:get_id() or vim.fn.fnamemodify(node:get_id(), ":h")
            local new_file_name = vim.fn.input("Enter new file name: ", "", "file")

            if new_file_name ~= "" then
              local new_file_path = parent_path .. "/" .. new_file_name

              if new_file_name:match("%.qmd$") then
                -- Template for a Quarto markdown (.qmd)
                local quarto_template = {
                  "---",
                  "title: 'New Quarto Document'",
                  "format: html",
                  "---",
                  "",
                  "# New Quarto Document",
                  "",
                }
                vim.fn.writefile(quarto_template, new_file_path)
                print("Created new Quarto document: " .. new_file_path)
              else
                -- Create an empty file for other extensions
                vim.fn.writefile({}, new_file_path)
                print("Created new file: " .. new_file_path)
              end
            end
          end,
        },
        window = {
          mappings = {
            ["<right>"] = "open",
            ["<left>"] = "close_node",
            ["n"] = "create_file_with_setup",
          },
        },
      },
    },
  },
}
