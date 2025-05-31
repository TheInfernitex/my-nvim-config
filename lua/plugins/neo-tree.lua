return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    config = function()
      require("neo-tree").setup({
        filesystem = {
          filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = false,
          },
        },
      })

      -- Define the toggle command yourself
      vim.api.nvim_create_user_command("NeotreeToggle", function()
        require("neo-tree.command").execute({ toggle = true })
      end, {})

      -- Set keymap for <Space>e to toggle neo-tree (adjust if you want different key)
      vim.keymap.set("n", "<Space>e", ":NeotreeToggle<CR>", { noremap = true, silent = true })
    end,
  },
}
