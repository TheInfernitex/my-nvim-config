return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  enabled = true, -- Ensure it is enabled
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
  },
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      mapping = cmp.mapping.preset.insert(),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "buffer" },
      }),
    })
  end,
}
