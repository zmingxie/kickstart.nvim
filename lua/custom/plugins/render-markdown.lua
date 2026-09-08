-- In-buffer markdown rendering.
--
-- Needs a treesitter parser and an icon provider. Both already come from
-- init.lua -- nvim-treesitter in the treesitter section and mini.nvim in the
-- UI section -- and `require 'custom.plugins'` runs after both, so this only
-- has to add the plugin itself. See the plugin README's `vim.pack` example.
vim.pack.add { 'https://github.com/MeanderingProgrammer/render-markdown.nvim' }
require('render-markdown').setup {}
