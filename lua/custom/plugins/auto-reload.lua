-- Auto-reload files modified by Claude Code (or any other external process).
--
-- Configuration only, no plugin: under lazy.nvim this needed a dummy
-- `dir = "~/.config/nvim"` spec just to get a `config` callback. `vim.pack`
-- has no spec table, so the module body simply runs on require.

vim.o.autoread = true

-- Check for file changes on focus, buffer enter, and idle
vim.api.nvim_create_autocmd({ 'FocusGained', 'BufEnter', 'CursorHold', 'CursorHoldI' }, {
  group = vim.api.nvim_create_augroup('auto-reload', { clear = true }),
  command = 'checktime',
})

-- Notify when a file is reloaded
vim.api.nvim_create_autocmd('FileChangedShellPost', {
  group = vim.api.nvim_create_augroup('auto-reload-notify', { clear = true }),
  callback = function() vim.notify('File changed on disk. Buffer reloaded.', vim.log.levels.INFO) end,
})
