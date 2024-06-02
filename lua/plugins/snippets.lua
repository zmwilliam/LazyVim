-- No more luasnip, package.json can be used to determine filetypes
-- https://github.com/garymjr/nvim-snippets/issues/5
if true then return {} end

return {
  "rafamadriz/friendly-snippets",
  config = function()
    local luasnip = require("luasnip")
    luasnip.filetype_extend("typescriptreact", { "javascript" })
    luasnip.filetype_extend("typescript", { "javascript" })
    require("luasnip.loaders.from_vscode").lazy_load()
  end,
}
