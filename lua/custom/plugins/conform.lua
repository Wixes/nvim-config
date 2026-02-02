return { -- Autoformat
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>ff',
      function()
        require('conform').format({
          async = false,
          lsp_format = 'fallback',
          timeout_ms = 10000,
        }, function(err)
          if not err then
            -- Make sure that editor rerender diagnostic
            -- to make sure there is no stale errors after format
            vim.schedule(function()
              vim.diagnostic.reset(nil, 0)
            end)
          end
        end)
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      -- Disable "format_on_save lsp_fallback" for languages that don't
      -- have a well standardized coding style. You can add additional
      -- languages here or re-enable it for the disabled ones.
      local disable_filetypes = { c = true, cpp = true }
      if disable_filetypes[vim.bo[bufnr].filetype] then
        return nil
      else
        return {
          -- 10s is time for formatting. It needs because default is 500ms and in big projects
          -- it always timeout
          timeout_ms = 10000,
          lsp_format = 'fallback',
        }
      end
    end,
    formatters_by_ft = {
      lua = { 'stylua' },
      typescript = { 'eslint_d' },
      javascript = { 'eslint_d' },
      typescriptreact = { 'eslint_d' },
      javascriptreact = { 'eslint_d' },
      -- Conform can also run multiple formatters sequentially
      -- python = { "isort", "black" },
      --
      -- You can use 'stop_after_first' to run the first available formatter from the list
      -- javascript = { "prettierd", "prettier", stop_after_first = true },
    },
  },
}
