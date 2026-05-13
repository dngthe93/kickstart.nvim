vim.pack.add { 'https://github.com/folke/snacks.nvim', 'https://github.com/nickjvandyke/opencode.nvim' }

require('snacks').setup {
  input = {}, -- Enhances `ask()`
  picker = { -- Enhances `select()`
    actions = {
      opencode_send = function(...) return require('opencode').snacks_picker_send(...) end,
    },
    win = {
      input = {
        keys = {
          ['<a-a>'] = { 'opencode_send', mode = { 'n', 'i' } },
        },
      },
    },
  },
}

---@type opencode.Opts
vim.g.opencode_opts = {
  -- Your configuration, if any; goto definition on the type or field for details
}

vim.o.autoread = true -- Required for `opts.events.reload`

-- Recommended/example keymaps
vim.keymap.set({ 'n', 'x' }, '<leader>oa', function() require('opencode').ask('@this: ', { submit = true }) end, { desc = '[O]pencode [A]sk' })
vim.keymap.set({ 'n', 'x' }, '<leader>ox', function() require('opencode').select() end, { desc = '[O]pencode e[X]ecute action' })
vim.keymap.set({ 'n', 't' }, '<leader>ot', function() require('opencode').toggle() end, { desc = '[O]pencode [T]oggle' })

vim.keymap.set({ 'n', 'x' }, 'go', function() return require('opencode').operator '@this ' end, { desc = 'Add range to opencode', expr = true })
vim.keymap.set('n', 'goo', function() return require('opencode').operator '@this ' .. '_' end, { desc = 'Add line to opencode', expr = true })

vim.pack.add { 'https://github.com/folke/which-key.nvim' }

require('which-key').add {
  { '<leader>o', group = '[O]pencode', mode = { 'n', 'x' }, icon = { icon = '🤖' } },
}
