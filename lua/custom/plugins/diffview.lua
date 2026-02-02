-- Diffview is plugin that shows single tabpage interface for easily cycling through diffs for all
-- modified files for any git rev.
return {
  'sindrets/diffview.nvim',
  keys = {
    { '<leader>gd', '<cmd>DiffviewOpen<CR>', desc = '[G]it [D]iff (Project)' },
    { '<leader>gh', '<cmd>DiffviewFileHistory %<CR>', desc = '[G]it [H]istory (Current File)' },
    { '<leader>gx', '<cmd>DiffviewClose<CR>', desc = '[G]it [X] Close Diff' },
  },
}
