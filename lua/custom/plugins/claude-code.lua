-- Claude Code IDE integration via WebSocket MCP protocol
-- Uses "headless" mode: Claude Code runs in a separate Ghostty pane,
-- but connects to NeoVim's WebSocket server for IDE features.
return {
  {
    'coder/claudecode.nvim',
    lazy = false, -- start WebSocket server on NeoVim launch
    opts = {
      terminal = {
        provider = 'none', -- We run Claude Code in a separate Ghostty pane
      },
    },
    keys = {
      { '<leader>ac', '<cmd>ClaudeCode<cr>', desc = 'Toggle Claude Code' },
      { '<leader>ab', '<cmd>ClaudeCodeAdd %<cr>', desc = 'Add buffer to Claude' },
      { '<leader>as', '<cmd>ClaudeCodeSend<cr>', mode = 'v', desc = 'Send selection to Claude' },
    },
  },
}
