return {
  "ibhagwan/fzf-lua",
  keys = {
    {
      "<leader>sf",
      function()
        vim.ui.input(
          { prompt = "  Grep for: " },
          function(input) return input and require("fzf-lua").grep({ search = input }) end
        )
      end,
      desc = "Grep for input",
    },
  },
}
