return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("dashboard").setup({
        theme = "doom",
        config = {
          header = {
            "",
            "",
            "",
            "██╗   ██╗██╗███╗   ███╗",
            "██║   ██║██║████╗ ████║",
            "██║   ██║██║██╔████╔██║",
            "██║   ██║██║██║╚██╔╝██║",
            "╚██████╔╝██║██║ ╚═╝ ██║",
            "╚═════╝ ╚═╝╚═╝     ╚═╝",
            "       z z z z        ",
            "",
            "",
            "",
          },
          center = {
            {
              icon = "  ",
              desc = "Find File",
              action = "Telescope find_files",
              key = "f",
            },
            {
              icon = "  ",
              desc = "New File",
              action = "enew",
              key = "n",
            },
            {
              icon = "  ",
              desc = "Projects",
              action = "Telescope projects",
              key = "p",
            },
            {
              icon = "󰈭  ",
              desc = "Find Text",
              action = "Telescope live_grep",
              key = "g",
            },
            {
              icon = "  ",
              desc = "Recent Files",
              action = "Telescope oldfiles",
              key = "r",
            },
            {
              icon = "  ",
              desc = "Config",
              action = "e ~/.config/nvim/",
              key = "c",
            },
            {
              icon = "  ",
              desc = "Restore Session",
              action = 'lua require("persistence").load()',
              key = "s",
            },
            {
              icon = "  ",
              desc = "Lazy Extras",
              action = "LazyExtras",
              key = "x",
            },
            {
              icon = "󰒲  ",
              desc = "Lazy",
              action = "Lazy",
              key = "l",
            },
            {
              icon = "  ",
              desc = "Quit",
              action = "qa",
              key = "q",
            },
          },
          footer = {

            "",
            "",
            "",
            "⚡ Neovim loaded "
              .. vim.fn.len(vim.fn.globpath(vim.o.runtimepath, "plugin/**/*.lua", false, true))
              .. " plugins in "
              .. vim.fn.printf("%.2f", vim.fn.reltimefloat(vim.fn.reltime(vim.g.start_time)))
              .. "ms",
          },
        },
      })
    end,
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
}
