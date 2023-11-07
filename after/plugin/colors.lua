
function ColorMyPencils(color)
    color = color or "catppuccin"
    vim.api.nvim_command('colorscheme ' .. color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()

