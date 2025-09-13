return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.completion = {
      autocomplete = false, -- não abre sozinho
      completeopt = "menu,menuone,noinsert,noselect",
    }
    opts.mapping = vim.tbl_extend("force", opts.mapping, {
      ["<C-Space>"] = cmp.mapping.complete(), -- completa manualmente
    })
  end,
}
