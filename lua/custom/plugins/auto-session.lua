return {
  'rmagatti/auto-session',
  lazy = false,

  config = function()
    vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions'

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    local opts = {
      suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
      auto_restore = false,
      pre_save_cmds = { 'Neotree close' },
      post_save_cmds = { 'Neotree reveal' },
      post_restore_cmds = { 'Neotree reveal' },
      -- log_level = 'debug',
    }

    require('auto-session').setup(opts)
  end,
  keys = {
    {
      '<leader>wS',
      '<cmd>SessionSave<CR>',
      { noremap = true, silent = true, nowait = true },
      desc = 'Save Workspace',
    },
    {
      '<leader>wR',
      '<cmd>SessionRestore<CR>',
      { noremap = true, silent = true, nowait = true },
      desc = 'Restore Workspace',
    },
    {
      '<leader>wD',
      '<cmd>SessionDelete<CR>',
      { noremap = true, silent = true, nowait = true },
      desc = 'Delete Workspace',
    },
  },
}
