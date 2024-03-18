-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'lervag/vimtex',
    config = function()
      vim.g.tex_flavor = 'latex'
      -- Lets silence some errors :)
      vim.g.vimtex_quickfix_ignore_filters = {
        'Underfull',
        'Overfull',
        'LaTeX Warning: .+ float specifier changed to',
        'LaTeX hooks Warning',
        'Package siunitx Warning: Detected the "physics" package:',
        'Package hyperref Warning: Token not allowed in a PDF string',
      }
    end,
  },
  {
    'jalvesaq/Nvim-R',
    config = function()
      vim.g.R_assign = 0
      vim.g.R_hl_term = 1
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    options = {
      globalstatus = true,
      -- theme = 'solarized_dark',
      icons_enabled = true,
    },
  },
  'godlygeek/tabular',
  'ntpeters/vim-better-whitespace',
  'craftzdog/solarized-osaka.nvim',
  'catppuccin/nvim',
  'rebelot/kanagawa.nvim',
  'NLKNguyen/papercolor-theme',
  'ellisonleao/gruvbox.nvim',
  'Mofiqul/dracula.nvim',
  'joshdick/onedark.vim',
  'romainl/Apprentice',
  'shaunsingh/solarized.nvim',
}
