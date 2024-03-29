return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-calc",
    "hrsh7th/cmp-emoji",
    "jc-doyle/cmp-pandoc-references",
    "kdheepak/cmp-latex-symbols",
  },
  opts = function(_, opts)
    local cmp = require "cmp"
    local luasnip = require "luasnip"

    return require("astronvim.utils").extend_tbl(opts, {
      window = {
        completion = {
          border = "rounded",
          col_offset = -1,
          side_padding = 0,
        },
      },
      sources = cmp.config.sources {
        { name = "nvim_lsp",          priority = 1000 },
        { name = "luasnip",           priority = 750 },
        { name = "codeium",           priority = 750 },
        { name = "pandoc_references", priority = 725 },
        { name = "latex_symbols",     priority = 700 },
        { name = "emoji",             priority = 700 },
        { name = "calc",              priority = 650 },
        { name = "path",              priority = 500 },
        { name = "buffer",            priority = 250 },
      },
      mapping = {
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item { behavior = cmp.SelectBehavior.Insert }
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item { behavior = cmp.SelectBehavior.Insert }
          else
            fallback()
          end
        end, { "i", "s" }),
      },
    })
  end,
}
