return {
  {
    'NvChad/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup {
        user_default_options = {
          tailwind = true,
        },
      }

      -- Add keymap to toggle colorizer
      local colorizer_active = true
      vim.api.nvim_set_keymap('n', '<leader>tc', ':lua ToggleColorizer()<CR>', { noremap = true, silent = true, desc = '[T]oggle [C]olorizer' })

      -- Toggle colorizer function
      function ToggleColorizer()
        if colorizer_active then
          vim.cmd 'ColorizerDetachFromBuffer'
          colorizer_active = false
        else
          vim.cmd 'ColorizerAttachToBuffer'
          colorizer_active = true
        end
      end
    end,
  },
}
