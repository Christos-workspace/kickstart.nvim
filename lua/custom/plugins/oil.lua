-- plugins/oil.lua

return {
  'stevearc/oil.nvim',
  lazy = false, -- Recommended to avoid lazy-loading issues
  dependencies = {
    { 'nvim-tree/nvim-web-devicons' }, -- Optional: for file icons
  },
  config = function()
    require('oil').setup {
      default_file_explorer = true,
    }
    vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
  end,
}
