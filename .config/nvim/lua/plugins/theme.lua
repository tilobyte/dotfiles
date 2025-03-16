-- return { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = { contrast = "hard" }}
return {
  "gbprod/nord.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require "nord".setup {}
    vim.cmd.colorscheme "nord"
  end,
}
