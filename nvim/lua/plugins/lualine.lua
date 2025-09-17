return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- ícones bonitos
  config = function()
    require("lualine").setup({
      options = {
        theme = "catppuccin", -- usa o tema catppuccin
      },
    })
  end,
}

