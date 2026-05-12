return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        omnisharp = {},
        jdtls = {},
        kotlin_language_server = {},
        terraformls = {},
        ts_ls = {},
        cssls = {},
        html = {},
      },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "omnisharp",
        "jdtls",
        "kotlin-language-server",
        "terraform-ls",
        "typescript-language-server",
        "html-lsp",
        "css-lsp",
      },
    },
  },
}
