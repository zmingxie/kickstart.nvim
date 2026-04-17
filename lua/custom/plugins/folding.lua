return {
  {
    dir = "~/.config/nvim",
    config = function()
      vim.opt.foldmethod = "expr"
      vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
      vim.opt.foldlevel = 99  -- start with all folds open
    end,
  },
}
