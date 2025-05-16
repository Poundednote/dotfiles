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
function compile (input)
        vim.ui.input({prompt = "Compile: "}, function (input)
                if (input == nil) then return end
                vim.cmd(string.format("Make %s", input))
                last_compile = input 
        end)
end

vim.keymap.set("n", "<leader>cc", compile)

vim.keymap.set("n", "<leader>CC", function () 
        if last_compile == nil then 
                compile(input)
        else 
                vim.cmd(string.format("Make ./%s", last_compile))
        end
end)

