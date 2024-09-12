return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      spec = {
        { "<leader>o", group = "Obsidian Notes", icon = { icon = " " } },
      },
    },
  },
  {
    "epwalsh/obsidian.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = { "BufReadPre " .. vim.fn.expand("~") .. "/workspace/obsidian/**.md" },
    cmd = {
      "ObsidianQuickSwitch",
      "ObsidianSearch",
      "ObsidianNew",
      "ObsidianToday",
      "ObsidianYesterday",
      "ObsidianOpen",
    },
    opts = {
      workspaces = {
        { name = "personal", path = "~/Obsidian/personal" },
        { name = "work", path = "~/Obsidian/work" },
      },
      notes_subdir = "notes",
      daily_notes = { folder = "notes/dailies" },
      completion = { nvim_cmp = true },
      templates = {
        subdir = "templates",
        date_format = "%Y-%m-%d-%a",
        time_format = "%H:%M",
      },
    },
    keys = {
      { "<leader>oq", "<cmd>ObsidianQuickSwitch<CR>", desc = "Quick Switch" },
      { "<leader>os", "<cmd>ObsidianSearch<CR>", desc = "Search" },
      { "<leader>on", "<cmd>ObsidianNew<CR>", desc = "New" },
      { "<leader>ot", "<cmd>ObsidianToday<CR>", desc = "Note for TODAY (open or create)" },
      { "<leader>oy", "<cmd>ObsidianYesterday<CR>", desc = "Note for YESTERDAY (open or create)" },
      { "<leader>oo", "<cmd>ObsidianOpen<CR>", desc = "Open in the Obsidian App" },
      { "<leader>oT", "<cmd>ObsidianTemplate<CR>", desc = "List templates to insert" },
      { "<leader>of", "<cmd>ObsidianFollowLink<CR>", desc = "Follow Link" },
    },
  },
}
