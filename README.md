# 🌀 Parth's Neovim Config

A fast, minimal yet powerful Neovim setup for developers.  
Built on top of some elements from [LazyVim](https://github.com/LazyVim/LazyVim), with a personal touch.

---

🚀 Performance & Core

    ⚡ Blazing Fast Startup: Achieved through Lazy.nvim, which loads plugins only when they are needed (on demand).

    📦 Simple Configuration: Built on a modular structure where all user configuration, plugins, and overrides are managed in the ~/.config/nvim/lua/plugins directory.

    🧩 Pre-configured Defaults: Comes with sane defaults for thousands of files, buffers, and sessions using persistence.nvim and session-lens.

🧑‍💻 Essential Developer Features

1. Language Support (LSP & Diagnostics)

    LSP Ready: Uses nvim-lspconfig and mason.nvim to automatically install and manage Language Servers for virtually every language (e.g., TypeScript, Rust, Python, Go, C/C++).

    Built-in Diagnostics: Shows errors and warnings directly in the editor using the Neovim built-in diagnostics system.

2. Code Formatting & Linting

    🧹 Auto-Formatting: conform.nvim handles automatic code formatting on save for tools like Prettier, Black, and rustfmt.

    Linting Integration: Integrates linters like ESLint and standard language linters managed via Mason.

3. Navigation & Search

    🔍 Central Search Tool: telescope.nvim is the main interface for fuzzy finding files (<leader>ff), text (<leader>fg), help, keymaps, and Git references.

    📁 File Explorer: neo-tree provides a modern, fast file tree with Git status integration and file operations.

4. Git Integration

    🚦 Visual Git Status: gitsigns.nvim shows visual markers in the sign column to indicate added, modified, or removed lines.

    🧩 Lazygit Integration: Deep integration allows launching the powerful Lazygit TUI client directly from Neovim.

🎨 User Interface & Ergonomics

    Which Key: Pressing the leader key (<Space>) brings up an interactive menu showing all available keybindings.

    Status Line: lualine.nvim provides a smooth, customizable status line showing context like Git branch, filetype, LSP status, and diagnostics.

    Colorschemes: Defaults to Gruvbox, but offers easy switching and support for popular colorschemes via the lazyvim.config.colorscheme option.
