return {
  "L3MON4D3/LuaSnip",
  requires = { "rafamadriz/friendly-snippets" },
  config = function()
    local ls = require("luasnip")

    -- Load VSCode-style snippets from friendly-snippets
    require("luasnip.loaders.from_vscode").lazy_load()

    -- Custom Snippets
    ls.add_snippets("lua", {
      ls.snippet("fn", {
        ls.text_node("function "),
        ls.insert_node(1, "name"),
        ls.text_node("()"),
        ls.insert_node(2),
        ls.text_node(" end"),
      }),
    })

    local ls = require("luasnip")
    local s = ls.snippet
    local t = ls.text_node
    local i = ls.insert_node

    ls.add_snippets("cpp", {
      s("comment", {
        t({ "/*", " *@signature  :", " *@purpose    :", " *@param      :", " *@return     :", "*/" }),
      }),
    })

    ls.add_snippets("cpp", {
      s("template", {
        t({ "template <typename T>", "T name( T x){", "   return x;", "}" }),
      }),
    })

    -- Optional keybindings
    vim.api.nvim_set_keymap(
      "i",
      "<Tab>",
      "luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'",
      { expr = true, silent = true }
    )
  end,
}
