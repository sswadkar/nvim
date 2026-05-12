-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

local function open_lazygit(opts)
  if vim.fn.executable("lazygit") ~= 1 then
    vim.notify("lazygit is not installed. Install it with: brew install lazygit", vim.log.levels.WARN)
    return
  end

  Snacks.lazygit(opts or {})
end

map("n", "<leader>gg", function()
  open_lazygit({ cwd = LazyVim.root.git() })
end, { desc = "Lazygit (Root Dir)" })

map("n", "<leader>gG", function()
  open_lazygit()
end, { desc = "Lazygit (cwd)" })

vim.api.nvim_create_user_command("LazyGit", function()
  open_lazygit({ cwd = LazyVim.root.git() })
end, { desc = "Open lazygit in the project root" })
