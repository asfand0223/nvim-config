local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
    return
end

vim.opt.showtabline = 2

bufferline.setup {
    options = {
        close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
        right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
        left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
        middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
        indicator = {
            icon = '',
            style = 'icon',
        },
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 30,
        max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
        tab_size = 21,
        diagnostics = false, -- | "nvim_lsp" | "coc",
        diagnostics_update_in_insert = false,
        offsets = {
            {
                filetype = "NvimTree",
                text = "",
                padding = 0
            }
        },
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        -- can also be a table containing 2 custom separators
        -- [focused and unfocused]. eg: { '|', '|' }
        separator_style = { '', '' },
        enforce_regular_tabs = true,
        always_show_bufferline = true,
    },
    highlights = {
        buffer_selected = {
            fg = '#FFFFFF',
            bg = '#4407fa',
            bold = true,
            italic = true
        },
        indicator_selected = {
            bg = '#4407fa',
            fg = '#1e1e2e',
        },
        close_button = {
            fg = '#1e1e2e',
            bg = '#1e1e2e'
        },
        close_button_visible = {
            fg = '#1e1e2e',
            bg = '#1e1e2e'
        },
        close_button_selected = {
            fg = '#4407fa',
            bg = '#1e1e2e'
        }
    },
}
