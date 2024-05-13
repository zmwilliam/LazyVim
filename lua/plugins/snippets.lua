return {
  "rafamadriz/friendly-snippets",
  config = function()
    local luasnip = require("luasnip")
    luasnip.filetype_extend("typescriptreact", { "javascript" })
    luasnip.filetype_extend("typescript", { "javascript" })
    require("luasnip.loaders.from_vscode").lazy_load()
  end,
}
