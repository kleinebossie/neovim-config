return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        require("none-ls-luacheck.diagnostics.luacheck"),
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.diagnostics.golangci_lint,
        null_ls.builtins.formatting.gofumpt,
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.diagnostics.hadolint,
        null_ls.builtins.formatting.shfmt,
        null_ls.builtins.diagnostics.stylelint.with({
          condition = function(utils)
            return utils.root_has_file({ ".stylelintrc", ".stylelintrc.json" }) -- ← customize this
          end,
        }),
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
