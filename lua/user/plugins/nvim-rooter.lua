return {
    "notjedi/nvim-rooter.lua",
    dependency = {},
    config = function()
        require("nvim-rooter").setup({
            manual = false,
            exclude_filetypes = {},
            fallback_to_parent = true,
        })
    end
}
