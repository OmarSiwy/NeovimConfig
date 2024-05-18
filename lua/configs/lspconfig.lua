local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "clangd", -- for C and C++
  "cmake", -- for CMake
  "taplo", -- for TOML
  "rust_analyzer", -- for Rust
  "jsonls", -- for JSON
  "tsserver", -- for JavaScript and TypeScript
  "marksman", -- for Markdown
  "lua_ls", -- for Lua
  "html", -- for HTML
  "cssls", -- for CSS
  "angularls", -- for Angular
  "vuels", -- for Vue
  "jdtls", -- for Java
  "omnisharp", -- for C#
  "gopls", -- for Go
  "dartls", -- for Dart and Flutter
  "zls", -- for Zig
  "dockerls", -- for Docker
  "pyright", -- For Python
  "opencl_ls", -- forr OpenCL
}

-- Setup lsp servers with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

lspconfig.clangd.setup {
  capabilities = capabilities,
  filetypes = { "c", "cpp", "cc", "objc", "objcpp", "cuda", "h", "hpp", "hxx", "tpp" },
  on_attach = on_attach,
  on_init = on_init,
}
