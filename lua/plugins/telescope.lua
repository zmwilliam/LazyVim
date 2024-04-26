return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>sf",
      function()
        vim.ui.input({ prompt = "  Grep for: " }, function(input)
          return input and require("telescope.builtin").grep_string({ search = input })
        end)
      end,
      desc = "Grep for input",
    },
  },
}
