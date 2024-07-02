return {
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      columns = {
        "icon",
        -- "size",
        -- "mtime",
      },
      view_options = { show_hidden = true },
      float = {
        padding = 4,
      },
      keymaps = {
        ["q"] = "actions.close",
        ["H"] = "actions.toggle_hidden",
      },
    },
    keys = {
      { "<leader>E", function() require("oil").toggle_float(".") end, desc = "Explorer Oil (Root dir)", remap = true },
      { "<leader>e", function() require("oil").toggle_float() end, desc = "Explorer Oil (cwd)", remap = true },
    },
  },
}
