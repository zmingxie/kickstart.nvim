-- Toggle zoom for the current Neovim split, mirroring Cmd+Option+Z in Ghostty.

local zoomed = false
vim.keymap.set('n', '<leader>z', function()
  if zoomed then
    vim.cmd 'wincmd ='
    zoomed = false
  else
    vim.cmd 'wincmd _'
    vim.cmd 'wincmd |'
    zoomed = true
  end
end, { desc = 'Toggle [Z]oom current split' })
