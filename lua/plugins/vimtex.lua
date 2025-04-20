return {
  "lervag/vimtex",
  lazy = false, -- Make sure it's loaded on startup
  init = function()
    -- Recommended settings
    vim.g.vimtex_view_method = "zathura" -- or 'skim', 'sioyek', etc.
    vim.g.vimtex_compiler_method = "latexmk"
    vim.g.vimtex_mappings_enabled = 1
  end,
}
