-- Toggle zoom for current NeoVim split (like Cmd+Option+Z in Ghostty)
return {
  {
    dir = "~/.config/nvim",
    config = function()
      local zoomed = false
      vim.keymap.set("n", "<leader>z", function()
        if zoomed then
          vim.cmd("wincmd =")
          zoomed = false
        else
          vim.cmd("wincmd _")
          vim.cmd("wincmd |")
          zoomed = true
        end
      end, { desc = "Toggle zoom current split" })
    end,
  },
}
