return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- carrega antes dos outros temas
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = true, -- fundo transparente
      integrations = {
        lualine = true,
        treesitter = true,
        which_key = true,
        telescope = true,
        harpoon = true,
        cmp = true,
      },
    })

    -- aplica o tema
    vim.cmd.colorscheme("catppuccin")
  end,
}

