return {
  'f-person/git-blame.nvim',
  config = function()
    local gitblame = require 'gitblame'
    gitblame.setup {
      enabled = false,
      -- keymaps
      vim.keymap.set('n', '<leader>gb', gitblame.toggle, { desc = 'Toggle [G]it [B]lame' }),
    }
  end,
}
