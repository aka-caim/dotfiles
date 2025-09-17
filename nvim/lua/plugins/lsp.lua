return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",           -- instalador de servidores LSP
      "williamboman/mason-lspconfig.nvim", -- integração mason + lspconfig
    },
    config = function()
      -- Mason setup
      require("mason").setup()
      require("mason-lspconfig").setup()

      -- LSPConfig setup básico
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- exemplo: instalar/configurar o Lua Language Server
      lspconfig.lua_ls.setup({
	capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })
    end,
  },
}

