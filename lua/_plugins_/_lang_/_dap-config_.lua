require("mason-nvim-dap").setup{ensure_installed = {"codelldb"}}
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
