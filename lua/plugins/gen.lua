return {
    "David-Kunz/gen.nvim",
    opts = {
        model = "deepseek-chat", -- this is the OpenRouter model name
        api_key = os.getenv("OPENROUTER_API_KEY"),
        api_host = "https://openrouter.ai/api/v1",
        display_mode = "float", -- or "split"
        show_prompt = true,
        show_model = true,
    },
    cmd = { "Gen" },
    keys = {
        { "<leader>cg", ":Gen<CR>", desc = "Generate with DeepSeek" },
    },
}
