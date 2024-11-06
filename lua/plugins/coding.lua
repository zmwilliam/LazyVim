return {
  "hrsh7th/nvim-cmp",
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    local cmp = require("cmp")

    opts.mapping = vim.tbl_extend("force", opts.mapping, {
      -- show completion only for vsnip snippets.
      ["<C-s>"] = cmp.mapping.complete({
        config = {
          sources = {
            { name = "snippets" },
          },
        },
      }),
    })
  end,
}
