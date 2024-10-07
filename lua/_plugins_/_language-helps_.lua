require("mason").setup()

require("mason-lspconfig").setup {
    ensure_installed = {
    "pyright", -- Python lsp
    "clangd", -- C lsp
    "lua_ls", --lua lsp
    "bashls", --bash lsp
    }
}

local lspconfig = require("lspconfig")
    lspconfig.pyright.setup{}
    lspconfig.lua_ls.setup {
        settings = {
            Lua = {
                workspace = {
                    library = vim.api.nvim_get_runtime_file("", true)
                }
            }
        }
    }
    lspconfig.clangd.setup{}
    lspconfig.bashls.setup{}

require("mason-nvim-dap").setup{ensure_installed = {"python", "codelldb"}}

require("dap-python").setup("python")

-- doesn't work currently
require("dap-lldb").setup{
   configurations = {
      -- C lang configurations
      c = {
         {
            name = "Launch debugger",
            type = "lldb",
            request = "launch",
            cwd = "${workspaceFolder}",
            program = function()
               -- Build with debug symbols
               local out = vim.fn.system({"make", "--debug"})
               -- Check for errors
               if vim.v.shell_error ~= 0 then
                  vim.notify(out, vim.log.levels.ERROR)
                  return nil
               end
               -- Return path to the debuggable program
               return "path/to/executable"
            end,
         },
      },
   },
}

vim.g.coq_settings = {
	auto_start = "shut-up"
}

