vim.pack.add({
    "https://github.com/zbirenbaum/copilot.lua",
})
require("copilot").setup({
    suggestion = {
        enabled = true,
        auto_trigger = true,
        hide_during_completion = true,
        keymap = {
            accept = "<Right>",
            next = false,
            prev = false,
            dismiss = false,
        },
    },
    filetypes = {
        ["*"] = true,
    },
    panel = { enabled = false },
})
