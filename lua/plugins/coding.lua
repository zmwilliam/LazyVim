return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      menu = {
        border = "rounded",
        auto_show = false,
      },
      -- ghost_text = { enabled = true },
      documentation = { window = { border = "rounded" } },
    },
    signature = {
      enabled = false,
      window = {
        border = "rounded",
        show_documentation = false,
        max_height = 5,
      },
    },
    keymap = {
      ["<C-s>"] = { function(cmp) cmp.show({ providers = { "snippets" } }) end },
    },
  },
}
