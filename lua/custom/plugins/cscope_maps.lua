vim.pack.add { { src = 'https://github.com/dhananjaylatkar/cscope_maps.nvim', name = 'cscope_maps' } }

require('cscope_maps').setup {
  cscope = {
    picker = 'telescope',
  },
}

vim.pack.add { 'https://github.com/folke/which-key.nvim' }

require('which-key').add {
  { '<leader>c', group = '[C]scope', mode = { 'n', 'v' }, icon = { icon = '📖' } },
}
