local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup {
  "nvim-lualine/lualine.nvim",
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  "rcarriga/nvim-notify",
  "pocco81/auto-save.nvim",
  "brenoprata10/nvim-highlight-colors",
  "kepano/flexoki-neovim",              --theme
  "kvrohit/mellow.nvim",                --theme
}

require("notify")

require('lualine').setup {
    options = { theme = "auto" },
}

--vim.cmd.colorscheme("flexoki-dark")
vim.cmd.colorscheme("mellow")

require('nvim-highlight-colors').setup {
    render = 'virtual'
}

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()
