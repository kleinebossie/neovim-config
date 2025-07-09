return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")

		local servers = {
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
		}

		for _, server in ipairs(servers) do
			lspconfig[server].setup({})
		end

		vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
		vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
	end,
}
