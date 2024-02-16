

-- Function to read the keymap file
local function readKeymapFile()
    -- Modify this function to read your keymap file
    return [[
    motions:
    <C-o>: go to previous location
    <C-i>: go forward location
    gd: jump to definition
    gf: go to file
    s: delete selected go insert mode
    A: end of the line with insert mode
    I: start of the line with insert mode
    O: above the line with insert mode
    o: under the line with insert mode
    <C-ws>:  new horizontal window
    <C-wv>:  new vertical window
    v: new vertical window on file manager
    <C-ww>: window change
    <C-t>: open/hide terminal
    when highlighted, move whole line or paragraph wit J/K
    <C-d>/<C-u>: jump around file
    / search for words in a file

fold:
    zf: fold selected
    za: toggle fold, close and open. first use zf.

comment:
    gcc comment/uncomment current line 
    on visual mode gc comment/uncomment if you do not select a whole line it will automatically comment block
    gcip comment/uncomment paragraph

complete code:
    <Tab> confirm sugestion

fugitive:
    <leader>gs git status
    <leader>gd git diff

harpoon:
    add_file <leader>a
    toggle_quick_menu <C-e>
    nav_file <C-h>
    nav_file <C-l>
    nav_file <C-n>
    nav_file <C-s>

telescope:
    <leader>pf find files
    <C-p> find git files
    <leader>ps grep
    <leader>fg live grep
    <leader>fb file browser

undotree:
    <leader>u

other keymaps:
    cd in file browser makes browsing directory the current directory
    K show info about variable etc.
    u undo
    y yank
    p paste
    d delete
    <leader>pv back to file manager
    <leader>f format
    <leader>p paste to highlighted area and send highlighted area to void
    <leader>y yank into the system clipboard
    <leader>d delete it to void
    <leader>s change all words(where my cursor was) in this file
    <leader>x make current file executable
    D on file manager deletes the file
    d for creating a directory
    % for creating a new file
    ]]
end

-- Function to display the keymaps
function showKeymaps()
    local content = readKeymapFile()

    -- Create a new scratch buffer to display the keymaps
    local buf = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_buf_set_option(buf, 'buftype', 'nofile')
    vim.api.nvim_buf_set_lines(buf, 0, -1, false, vim.split(content, '\n'))

    -- Create a new window to display the keymaps buffer
    local width = 60 -- Set the width of the window
    local height = 20 -- Set the height of the window
    local row = (vim.o.lines - height) / 2
    local col = (vim.o.columns - width) / 2
    local opts = {
        width = width,
        height = height,
        row = row,
        col = col,
        relative = 'editor',
        style = 'minimal'
    }
    local win = vim.api.nvim_open_win(buf, true, opts)

    -- Map a key to close the displayed keymaps window
    vim.api.nvim_buf_set_keymap(buf, 'n', '<Esc>', '<cmd>q!<CR>', {})
end

-- Bind the <F2> key to display the keymaps
vim.api.nvim_set_keymap('n', '<F2>', ':lua showKeymaps()<CR>', { noremap = true, silent = true })



