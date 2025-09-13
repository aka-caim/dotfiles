-- ~/.config/nvim/lua/plugins/colorscheme.lua
return {
  -- 1) Instala e prepara o Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false, -- carrega já no início
    priority = 1000, -- aplica o tema antes dos outros
    opts = {
      flavour = "mocha", -- <<--- AQUI garantimos Mocha
      -- (opcional) extras comuns:
      integrations = {
        treesitter = true,
        telescope = true,
        gitsigns = true,
        cmp = true,
        native_lsp = { enabled = true },
        which_key = true,
        noice = true,
        mini = true,
        notify = true,
        lsp_trouble = true,
      },
      transparent_background = true, -- descomente se quiser fundo transparente
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
