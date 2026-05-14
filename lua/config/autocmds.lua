-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local hot_reload = vim.api.nvim_create_augroup("hot_reload_external_changes", { clear = true })

vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained", "TermClose", "TermLeave" }, {
  group = hot_reload,
  callback = function()
    if vim.o.buftype ~= "" then
      return
    end
    if vim.fn.mode() == "c" then
      return
    end
    vim.cmd("checktime")
  end,
})

vim.api.nvim_create_autocmd("FileChangedShellPost", {
  group = hot_reload,
  callback = function()
    vim.notify("Reloaded file changed outside Neovim", vim.log.levels.INFO, { title = "nvim" })
  end,
})
