-- Plugin for git integration with nvim (commits, pushes, pulls)
return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration
    'nvim-telescope/telescope.nvim', -- optional
  },
  keys = {
    { '<leader>gs', '<cmd>Neogit<CR>', desc = '[G]it [S]tatus (Neogit)' },
    { '<leader>gc', '<cmd>Neogit commit<CR>', desc = '[G]it [C]ommit' },
    { '<leader>gp', '<cmd>Neogit push<CR>', { desc = '[G]it [P]ush' } },
    { '<leader>gl', '<cmd>Neogit pull<CR>', { desc = '[G]it Pu[l]l' } },
  },
  opts = {
    integrations = {
      diffview = true,
    },
  },
}
