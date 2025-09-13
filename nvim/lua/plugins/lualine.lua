return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      theme = "catppuccin", -- combina com seu tema
      section_separators = "", -- tira os separadores
      component_separators = "",
      globalstatus = true, -- uma barra única embaixo
    },
    sections = {
      lualine_a = { "mode" }, -- modo atual (NORMAL/INSERT/etc.)
      lualine_c = { "filename" }, -- nome do arquivo
      lualine_y = { "filetype" }, -- info do arquivo
      lualine_z = { "progress" }, -- porcentagem no arquivo
    },
  },
}
