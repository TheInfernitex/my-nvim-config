return {
    "robitx/gp.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("gp").setup({
            openai_api_key = vim.env.OPENAI_API_KEY,
            agents = {
                {
                    name = "ChatGPT-4",
                    chat = true,
                    command = true,
                    model = { model = "gpt-4", temperature = 0.7 },
                },
                {
                    name = "CodeGPT-3.5",
                    chat = true,
                    model = { model = "gpt-3.5-turbo", temperature = 0.3 },
                },
            },
        })
    end,
    cmd = { "GpChatNew", "GpRewrite", "GpExplain", "GpFix", "GpActAs" },
    keys = {
        { "<leader>ai", "<cmd>GpChatNew<cr>", desc = "AI Chat" },
        { "<leader>ar", "<cmd>GpRewrite<cr>", desc = "AI Rewrite" },
        { "<leader>ae", "<cmd>GpExplain<cr>", desc = "Explain Code" },
        { "<leader>af", "<cmd>GpFix<cr>", desc = "Fix Code" },
        { "<leader>aa", "<cmd>GpActAs<cr>", desc = "Act As..." },
    },
}
