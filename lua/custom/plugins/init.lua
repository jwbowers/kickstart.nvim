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
    'R-nvim/R.nvim',
    lazy = false,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = { 'markdown', 'markdown_inline', 'r', 'rnoweb' },
      }
    end,
  },
  'R-nvim/cmp-r',
  {
    'hrsh7th/nvim-cmp',
    config = function()
      require('cmp').setup { sources = { { name = 'cmp_r' } } }
      require('cmp_r').setup {}
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
  { 'mfussenegger/nvim-lint' },
  { 'nvim-neotest/nvim-nio' },
  'tpope/vim-fugitive',
  'godlygeek/tabular',
  'ntpeters/vim-better-whitespace',
  {
    'anufrievroman/vim-angry-reviewer',
    config = function()
      vim.g.AngryReviewerEnglish = 'american'
    end,
  },
  'craftzdog/solarized-osaka.nvim',
  'catppuccin/nvim',
  'rebelot/kanagawa.nvim',
  'NLKNguyen/papercolor-theme',
  'ellisonleao/gruvbox.nvim',
  'Mofiqul/dracula.nvim',
  'joshdick/onedark.vim',
  'romainl/Apprentice',
  'shaunsingh/solarized.nvim',
  {
    'lifepillar/vim-solarized8',
    branch = 'neovim',
  },
}
