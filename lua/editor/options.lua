local o = vim.o

o.number = true
o.signcolumn = "yes"
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.clipboard = "unnamedplus"
o.undofile = true
o.showmode = false
o.cmdheight = 0
o.laststatus = 3
o.winborder = "rounded"
o.pumborder = "rounded"
o.pumheight = 12
o.termguicolors = false
o.guicursor =
  "n-sm-c:block-blinkon500-blinkoff500,i-ci-ve:ver25-blinkon500-blinkoff500,r-cr-o:hor20-blinkon500-blinkoff500,v-V:block"
o.wildmode = "noselect:lastused,full"
o.wildoptions = "pum,tagfile"

vim.cmd.colorscheme("default")

vim.api.nvim_create_autocmd("CmdlineChanged", {
    pattern = { ":", "/", "?" },
    callback = function()
        vim.fn.wildtrigger()
    end,
})

for _, key in ipairs({ "<Up>", "<Down>" }) do
    vim.keymap.set("c", key, function()
        return vim.fn.wildmenumode() == 1 and "<C-e>" .. key or key
    end, { expr = true })
end

require("vim._core.ui2").enable({ msg = { targets = "msg" } })
