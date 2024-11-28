return {
  "alexghergh/nvim-tmux-navigation",
  config = function()
    require("nvim-tmux-navigation").setup({
      disable_when_zoomed = false, -- defaults to false
    })
  end,
  keys = {
    { "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", desc = "Go to left window" },
    { "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", desc = "Go to lower window" },
    { "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", desc = "Go to upper window" },
    { "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", desc = "Go to right window" },
  },
}
