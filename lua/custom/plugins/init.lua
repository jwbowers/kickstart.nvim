-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		"lervag/vimtex",
		config = function()
			vim.g.tex_flavor = 'latex'
		end,
	},
	{
		"jalvesaq/Nvim-R",
		config = function()
			vim.g.R_assign = 0
			vim.g.R_hl_term = 1
		end,
	},
	"godlygeek/tabular",
	"ntpeters/vim-better-whitespace",
	"craftzdog/solarized-osaka.nvim",
	"catppuccin/nvim",
	"rebelot/kanagawa.nvim",
	"NLKNguyen/papercolor-theme",
	"ellisonleao/gruvbox.nvim",
	"Mofiqul/dracula.nvim",
	"joshdick/onedark.vim",
	"romainl/Apprentice",
	"shaunsingh/solarized.nvim"
}
-- vim.g.tex_flavor = 'latex'
-- vim.g.R_assign = 0
-- vim.g.R_app = "radian"
-- vim.g.R_cmd = "R"
-- vim.g.R_hl_term = 0
-- vim.g.R_args = {}
-- vim.g.R_bracketed_paste = 1
