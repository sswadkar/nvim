return {
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      if vim.v.servername == "" then
        local run_dir = vim.fn.stdpath("run")
        vim.fn.mkdir(run_dir, "p")
        vim.fn.serverstart(run_dir .. "/nvim-vimtex-" .. vim.fn.getpid() .. ".sock")
      end

      local uname = vim.loop.os_uname().sysname
      if uname == "Darwin" then
        vim.g.vimtex_view_method = "skim"
        vim.g.vimtex_view_skim_sync = 1
        vim.g.vimtex_view_skim_activate = 1
      elseif uname == "Linux" then
        vim.g.vimtex_view_method = "zathura"
      elseif uname:match("Windows") then
        vim.g.vimtex_view_method = "general"
        vim.g.vimtex_view_general_viewer = "SumatraPDF"
      end

      vim.g.vimtex_compiler_method = "latexmk"
    end,
  },
}
