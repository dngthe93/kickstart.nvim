return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  opts = {
    flavour = 'mocha',
    term_colors = true,
    transparent_background = true,
    highlight_overrides = {
      mocha = function(colors)
        return {
          Search = { fg = colors.base, bg = colors.yellow },
        }
      end,
    },
    color_overrides = {
      mocha = {
        base = '#121212',
        mantle = '#242424',
        crust = '#474747',
      },
    },
    default_integrations = true,
    integrations = {
      cmp = true,
      fidget = true,
      gitsigns = true,
      mason = true,
      mini = {
        enabled = true,
        indentscope_color = '',
      },
      native_lsp = {
        enabled = true,
        virtual_text = {
          errors = { 'italic' },
          hints = { 'italic' },
          warnings = { 'italic' },
          information = { 'italic' },
          ok = { 'italic' },
        },
        underlines = {
          errors = { 'underline' },
          hints = { 'underline' },
          warnings = { 'underline' },
          information = { 'underline' },
          ok = { 'underline' },
        },
        inlay_hints = {
          background = true,
        },
      },
      neotree = true,
      treesitter = true,
      telescope = {
        enabled = true,
      },
      which_key = true,
    },
  },
  config = function(_, opts)
    require('catppuccin').setup(opts)

    vim.cmd.colorscheme 'catppuccin-mocha'
  end,
}
