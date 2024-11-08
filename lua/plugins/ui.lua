return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "night",
      transparent = false,
      styles = {
        sidebars = "dark",
        floats = "dark",
      },
      on_highlights = function(hl, c)
        hl.CmpPmenu = {
          bg = "none",
          fg = c.border_highlight,
          blend = 0,
        }
      end,
      on_colors = function(colors) colors.border = colors.bg_highlight end,
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      win = {
        border = "rounded",
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    opts = {
      window = {
        completion = {
          border = "rounded",
          winhighlight = "Normal:CmpPmenu,FloatBorder:CmpPmenu,CursorLine:PmenuSel,Search:None",
        },
        documentation = {
          border = "rounded",
          winhighlight = "Normal:CmpPmenu,FloatBorder:CmpPmenu",
        },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ui = { border = "rounded" },
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true,
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        float = {
          border = "rounded",
        },
      },
      inlay_hints = {
        enabled = false,
      },
    },
  },
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        always_show_bufferline = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },
}
