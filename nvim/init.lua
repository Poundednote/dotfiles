vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>wv", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>wh", "<cmd>wincmd h<cr>")
vim.keymap.set("n", "<leader>wj", "<cmd>wincmd j<cr>")
vim.keymap.set("n", "<leader>wk", "<cmd>wincmd k<cr>")
vim.keymap.set("n", "<leader>wl", "<cmd>wincmd l<cr>")
vim.keymap.set("n", "<leader>wq", "<cmd>wincmd q<cr>")
vim.keymap.set("n", "<leader>wH", "<cmd>wincmd H<cr>")
vim.keymap.set("n", "<leader>wJ", "<cmd>wincmd J<cr>")
vim.keymap.set("n", "<leader>wK", "<cmd>wincmd K<cr>")
vim.keymap.set("n", "<leader>wL", "<cmd>wincmd L<cr>")
vim.keymap.set("n", "<M-x>", ":<C-f>i")
vim.keymap.set("n", "]e", vim.cmd.cnext)
vim.keymap.set("n", "[e", vim.cmd.cprevious)

local last_compile = nil
function compile ()
        vim.ui.input({prompt = "Compile: "}, function (input)
                if (input == nil) then return end
                vim.cmd(string.format("Make %s", input))
                last_compile = input 
        end)
end

vim.keymap.set("n", "<leader>cc", compile)

vim.keymap.set("n", "<leader>CC", function () 
        if last_compile == nil then 
                compile("")
        else 
                vim.cmd(string.format("Make %s", last_compile))
        end
end)

vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 8
vim.opt.softtabstop = 8
vim.opt.shiftwidth = 8
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.directory = "/Users/ray/.vim/swapfiles//"
vim.opt.backupdir = "/Users/ray/.vim/swapfiles//"
vim.opt.undodir = "/Users/ray/.vim/swapfiles//"
vim.opt.swapfile = true
vim.opt.backup = true
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
vim.opt.cursorcolumn = true
vim.opt.cursorline = true
vim.opt.autochdir = true

vim.g.mapleader = " "

vim.opt.scrolloff = 8 
vim.opt.updatetime = 50
vim.opt.makeprg = nil;

if vim.g.neovide then
        vim.g.neovide_cursor_animation_length = 0
        vim.g.neovide_scroll_animation_length = 0
        vim.g.neovide_position_animation_length = 0
end
