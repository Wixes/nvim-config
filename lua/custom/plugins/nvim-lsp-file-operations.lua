-- Plugin helper for neo-tree to rename and update all imports on renaming / moving file
return {
  'antosha417/nvim-lsp-file-operations',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-neo-tree/neo-tree.nvim', -- Need because we're using neo-tree plugin
  },
  config = function()
    require('lsp-file-operations').setup()
  end,
}
