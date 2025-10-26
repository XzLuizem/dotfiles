vim.opt.number = true
vim.cmd("syntax on")
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.mouse = "a"
vim.opt.clipboard:append("unnamedplus")

vim.g.loaded_perl_provider = 0
--vim.g.loaded_ruby_provider = 0
vim.g.python3_host_prog = "/data/data/com.termux/files/usr/bin/python"

vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format()
end, { desc = "Formatear con LSP" })

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

local ok, plugins = pcall(require, "plugins")
if not ok then
  vim.notify("No se pudo cargar plugins.lua", vim.log.levels.ERROR)
end

require("lazy").setup({
  spec = { import = "plugins" },
  --rocks = { enabled = false },
})
