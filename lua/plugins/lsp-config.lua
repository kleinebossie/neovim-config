return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls", "ts_ls", "html", "cssls", "eslint", "pyright", "gopls", "clangd", "jsonls", "bashls", "ruff", },
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      -- local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local on_attach = function(client, bufnr)
        local bufmap = function(mode, lhs, rhs)
          vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, { noremap=true, silent=true })
        end
        bufmap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
        bufmap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
        bufmap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
      end

      -- List servers (use lspconfig names, not mason names!)
      local servers = {
        "lua_ls",
        "ts_ls",
        "html",
        "cssls",
        "eslint",
        "pyright",
        "gopls",
        "clangd",
        "jsonls",
        "bashls",
        "ruff",
      }

      for _, server in ipairs(servers) do
        lspconfig[server].setup({
          -- capabilities = capabilities,
          on_attach = on_attach,
        })
      end
    end
  },
}
