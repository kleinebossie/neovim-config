return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = { style = "moon" },
	config = function()
		vim.cmd.colorscheme("tokyonight")
		vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffffff", bold = true })
		vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#bbbbbb" })
		vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#bbbbbb" })
	end,
}
