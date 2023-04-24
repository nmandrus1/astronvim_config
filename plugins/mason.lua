return {
  { "williamboman/mason.nvim", opts = { PATH = "append" } },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "gopls",
        "pyright",
        "lua_ls",
        "rust_analyzer",
        "zls",
        "jdtls",
      },
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "rustfmt",
      },
      handlers = {
        taplo = function()
        end,                    -- disable taplo in null-ls, it's taken care of by lspconfig
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = {
        "cppdbg",
        "python",
        "java-debug-adapter",
        "java-test",
      },
    },
  },
}
