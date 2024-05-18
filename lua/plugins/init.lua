return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "clangd",
        "cmake-language-server",
        "rust-analyzer",
        "json-ls",
        "typescript-language-server",
        "eslint",
        "markdownlint",
        "vue-language-server",
        "jdtls",
        "gopls",
        "dartls",
        "taplo",
        "zls",
        "pyright",
        "opencl-language-server",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "c",
        "cpp",
        "rust",
        "json",
        "javascript",
        "typescript",
        "markdown",
        "vue",
        "java",
        "go",
        "dart",
        "toml",
        "dockerfile",
        "zig",
        "python",
      },
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      view = {
        side = "right", -- Configures the file explorer to open on the right side
      },
    },
  },

  -- Run :Copilot auth to setup
  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    opts = {
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = "<F2>",
        },
      },
    },
  },

  {
    "Djancyp/better-comments.nvim",
    lazy = false,
  },
}
