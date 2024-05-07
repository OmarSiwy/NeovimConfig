local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    cpp = { "clang_format" }, -- for C++
    c = { "clang_format" }, -- for C
    json = { "prettier" }, -- for JSON
    javascript = { "prettier" }, -- for JavaScript
    typescript = { "prettier" }, -- for TypeScript
    html = { "prettier" }, -- for HTML
    css = { "prettier" }, -- for CSS
    markdown = { "prettier" }, -- for Markdown
    vue = { "prettier" }, -- for Vue files
    angular = { "prettier" }, -- assuming use in HTML/TypeScript/CSS
    java = { "google_java_format" }, -- for Java
    cs = { "omnisharp_format" }, -- for C#
    go = { "gofmt" }, -- for Go
    dart = { "dart_format" }, -- for Dart
    toml = { "taplo" }, -- assuming a formatter for TOML
    cmake = { "cmake_format" }, -- for CMake files
    makefile = { "make_format" }, -- hypothetical formatter for Makefiles
    python = { "black" }, -- for Python
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
