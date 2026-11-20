return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {
      -- github_dark gives Whitespace the same color as the CursorLine background.
      -- Use NonText for both so the terminal cursor stays visible on spaces-only lines.
      whitespace = { highlight = 'NonText' },
      indent = { highlight = 'NonText' },
    },
  },
}
