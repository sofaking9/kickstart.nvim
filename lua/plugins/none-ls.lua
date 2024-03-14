return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.yapf, -- .with({ extra_args='--in-place' }),
				null_ls.builtins.formatting.isort,
				null_ls.builtins.diagnostics.pylint.with({ extra_args={'--disable=R,C' }}),
			},
		})

		vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc='[C}ode [F]ormat' })
	end,
}
