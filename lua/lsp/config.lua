-- ~/.config/nvim/lua/lsp/config.lua
local M = {}

function M.setup()
  local lspconfig = require("lspconfig")

  -- Setup clangd for ESP32
  lspconfig.clangd.setup({
    cmd = { "clangd", "--compile-commands-dir=build" }, -- Adjust path to your build folder
    root_dir = lspconfig.util.root_pattern("CMakeLists.txt", "compile_commands.json"),
  })

  -- Add more LSP configurations here as needed
end

return M
