-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
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
    -- lazy = false,
    -- try to enable vim keybindings in R console
    esc_term = false,
    -- see about better highlighting in the R console
    hl_term = true,
    -- do not change -- to <-
    assignment_keymap = '',
    -- do not change <localleader>, to |>
    pipe_keymap = '',
    config = {
      active_window_warn = false,
      pdfviewer = 'open',
      rcmdchunk = 0,
    },
  },
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        sync_install = true,
        ensure_installed = { 'markdown', 'markdown_inline', 'r', 'rnoweb' },
      }
    end,
  },
  { 'R-nvim/cmp-r' },
  --  {
  --    'hrsh7th/nvim-cmp',
  --    config = function()
  --      local cmp = require 'cmp'
  --      cmp.setup {
  --        sources = { { name = 'cmp_r' } },
  --        mapping = cmp.mapping.preset.insert {
  --          ['<CR>'] = cmp.mapping.confirm { select = false },
  --          -- During auto-completion, press <Tab> to select the next item.
  --          ['<Tab>'] = cmp.mapping(function(fallback)
  --            if cmp.visible() then
  --              cmp.select_next_item { behavior = cmp.SelectBehavior.Insert }
  --            elseif has_words_before() then
  --              cmp.complete()
  --            else
  --              fallback()
  --            end
  --          end, { 'i', 's' }),
  --          ['<S-Tab>'] = cmp.mapping(function(fallback)
  --            if cmp.visible() then
  --              cmp.select_prev_item { behavior = cmp.SelectBehavior.Insert }
  --            else
  --              fallback()
  --            end
  --          end, { 'i', 's' }),
  --        },
  --      }
  --      require('cmp_r').setup {}
  --    end,
  --  },
  --    config = function()
  --      require('cmp').setup { sources = { { name = 'cmp_r' } } }
  --      require('cmp_r').setup {}
  --    end,
  --  },
  -- {
  --    'nvim-lualine/lualine.nvim',
  --    dependencies = { 'nvim-tree/nvim-web-devicons' },
  --    options = {
  --      globalstatus = true,
  --      -- theme = 'solarized_dark',
  --      icons_enabled = true,
  --    },
  --    sections = {
  --      lualine_a = { 'mode' },
  --      lualine_b = { { 'branch', icon = '' }, 'diagnostics' },
  --      lualine_c = { 'filename', 'searchcount' },
  --      lualine_x = { selectionCount },
  --      lualine_x = { require('r.utils').get_lang },
  --      lualine_y = { { rstatus, color = rsttcolor } },
  --      lualine_z = { 'progress', 'location' },
  --    },
  --  },
  {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        -- Customize or remove this keymap to your liking
        '<leader>f',
        function()
          require('conform').format { async = true, lsp_fallback = true }
        end,
        mode = '',
        desc = 'Format buffer',
      },
    },
    -- Everything in opts will be passed to setup()
    opts = {
      -- Define your formatters
      formatters_by_ft = {
        lua = { 'stylua' },
        python = { 'isort', 'black' },
        javascript = { { 'prettierd', 'prettier' } },
      },
      -- Set up format-on-save
      format_on_save = { timeout_ms = 500, lsp_fallback = true },
      -- Customize formatters
      formatters = {
        shfmt = {
          prepend_args = { '-i', '2' },
        },
      },
    },
    init = function()
      -- If you want the formatexpr, here is the place to set it
      vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
    end,
  },
  { 'mfussenegger/nvim-lint' },
  { 'nvim-neotest/nvim-nio' },
  { 'tpope/vim-fugitive' },
  { 'godlygeek/tabular' },
  { 'ntpeters/vim-better-whitespace' },
  {
    'anufrievroman/vim-angry-reviewer',
    config = function()
      vim.g.AngryReviewerEnglish = 'american'
    end,
  },
  { 'craftzdog/solarized-osaka.nvim' },
  { 'catppuccin/nvim' },
  { 'rebelot/kanagawa.nvim' },
  { 'NLKNguyen/papercolor-theme' },
  { 'ellisonleao/gruvbox.nvim' },
  { 'Mofiqul/dracula.nvim' },
  { 'joshdick/onedark.vim' },
  { 'romainl/Apprentice' },
  { 'shaunsingh/solarized.nvim' },
  {
    'lifepillar/vim-solarized8',
    branch = 'neovim',
  },
}
