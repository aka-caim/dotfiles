return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", -- garante que parsers sejam atualizados
    config = function()
      require("nvim-treesitter.configs").setup({
        -- linguagens que você quer instalar logo de cara
        ensure_installed = { "lua", "vim", "vimdoc", "c", "cpp"  },

        sync_install = false, -- instala parsers em paralelo
        auto_install = true,  -- baixa automaticamente ao abrir um arquivo

        highlight = {
          enable = true, -- ativa highlight avançado
        },

        indent = {
          enable = true, -- indentação baseada na árvore sintática
        },
      })
    end,
  },
}

