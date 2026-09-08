-- Claude Code IDE integration over its WebSocket MCP protocol.
--
-- "Headless" setup: Claude Code itself runs in a separate Ghostty pane and
-- connects back to this Neovim's WebSocket server for IDE features, so the
-- plugin's own terminal provider is disabled. That also means it needs no
-- `folke/snacks.nvim`, which its README lists only for the terminal provider.
--
-- Under lazy.nvim this spec carried `lazy = false` to force startup loading;
-- `vim.pack.add` is eager, so requiring this module is enough.
vim.pack.add { 'https://github.com/coder/claudecode.nvim' }
require('claudecode').setup {
  terminal = {
    provider = 'none',
  },
}

vim.keymap.set('n', '<leader>ac', '<cmd>ClaudeCode<cr>', { desc = 'Toggle Claude Code' })
vim.keymap.set('n', '<leader>ab', '<cmd>ClaudeCodeAdd %<cr>', { desc = 'Add buffer to Claude' })
vim.keymap.set('v', '<leader>as', '<cmd>ClaudeCodeSend<cr>', { desc = 'Send selection to Claude' })
