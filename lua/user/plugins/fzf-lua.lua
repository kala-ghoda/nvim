return {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        -- calling `setup` is optional for customization
        require("fzf-lua").setup({
            fzf_opts = {
                ['--layout'] = 'reverse-list',
                ['--with-nth'] = '2..,-1',
            }
        })
    end
}
