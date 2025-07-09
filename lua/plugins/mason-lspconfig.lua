return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "ts_ls",
        "html",
        "cssls",
        "pyright",
        "gopls",
        "clangd",
        "jdtls",
        "jsonls",
        "dockerls",
        "bashls",
        "ruff",
      },
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
}
