return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local lazy_status = require('lazy.status')
        require("lualine").setup({
            options = {
                theme = "auto",
                icons_enabled = true,
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                }
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {'filename'},
                lualine_x = {
                    {
                        lazy_status.updates,
                        cond = lazy_status.has_updates,
                        color = { fg = "#ff9e64" },
                    },
                    {'encoding'},
                }, 
                lualine_y = {'fileformat', 'filetype', 'progress'},
                lualine_z = {'searchcount', 'location'}
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {'filename'},
                lualine_x = {'location'},
                lualine_y = {},
                lualine_z = {}
            },

        })
    end
}
