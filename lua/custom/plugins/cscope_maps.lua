return {
  'dhananjaylatkar/cscope_maps.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim', -- optional [for picker="telescope"]
  },
  opts = {
    cscope = {
      picker = 'telescope',
    },
  },
}
