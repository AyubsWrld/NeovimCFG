local tone_colorscheme = {
  "cseelus/nvim-colors-tone",
  name = "tone",
  lazy = false,
  priority = 1000,
  config = function()
    -- Set Tone colorscheme
    --
    vim.cmd("colorscheme tone")

    -- Enable transparency
    vim.cmd([[
      highlight Normal guibg=NONE ctermbg=NONE
      highlight NonText guibg=NONE ctermbg=NONE
      highlight NormalNC guibg=NONE ctermbg=NONE
      highlight LineNr guibg=NONE
      highlight Folded guibg=NONE
      highlight EndOfBuffer guibg=NONE
      highlight SignColumn guibg=NONE
      highlight VertSplit guibg=NONE
    ]])

    -- Adjust colors to shades of sky blue
    --
    vim.cmd([[ highlight CursorLine guibg=#131a2a ctermbg=236 ]])
    vim.cmd([[

      highlight Comment guifg=#5fc9f8 ctermfg=110
      highlight Constant guifg=#64aaff ctermfg=111
      highlight String guifg=#82cfff ctermfg=117
      highlight Function guifg=#40a6ff ctermfg=75
      highlight Keyword guifg=#4fc3f7 ctermfg=81
      highlight Statement guifg=#42a5f5 ctermfg=75
      highlight Type guifg=#29b6f6 ctermfg=80
      highlight PreProc guifg=#26c6da ctermfg=79
      highlight Special guifg=#00bcd4 ctermfg=78
    ]])
  end,
}

return { tone_colorscheme }
