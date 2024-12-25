local M = {}

function M.setup()
  local lspconfig = require("lspconfig")

  lspconfig.clangd.setup({
    cmd = { "clangd", "--compile-commands-dir=build" }, -- Ensure this points to your build directory
    root_dir = lspconfig.util.root_pattern("CMakeLists.txt", "compile_commands.json"),
    init_options = {
      clangdFileStatus = true,
      fallbackFlags = {
        "--gcc-toolchain=/usr/bin",
        "--std=c++11",
        "-I/Users/ayubmohamed/Desktop/Programming/Graphite/esp-idf/components",
        "-I/Users/ayubmohamed/Desktop/Programming/Graphite/esp-idf/components/freertos/include",
        "--sysroot=/Users/ayubmohamed/Desktop/Programming/Graphite/esp-idf/components/esp32/include",
      },
    },
  })

  -- Add more LSP configurations here as needed, e.g., pyright, tsserver, etc.
  -- lspconfig.pyright.setup{}
  -- lspconfig.tsserver.setup{}
end

return M
