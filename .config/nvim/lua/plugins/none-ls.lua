return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.diagnostics.pylint,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {
			desc = "[f]ormat"
		})
	end,
}
