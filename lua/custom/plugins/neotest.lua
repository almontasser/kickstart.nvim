return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'V13Axel/neotest-pest',
  },
  config = function()
    require('neotest').setup {
      log_level = vim.log.levels.DEBUG,
      adapters = {
        require 'neotest-pest',
      },
    }

    -- vim.keymap.set('n', '<leader>tn', function()
    --   require('neotest').run.run()
    -- end)
    -- vim.keymap.set('n', '<leader>tf', function()
    --   require('neotest').run.run(vim.fn.expand '%')
    -- end)
  end,
  keys = {
    {
      '<leader>Tf',
      [[<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>]],
      { noremap = true, silent = true },
      desc = '[T]est [F]ile',
    },
    {
      '<leader>Tn',
      [[<cmd>lua require('neotest').run.run()<CR>]],
      { noremap = true, silent = true },
      desc = '[T]est [N]earest',
    },
  },
}
