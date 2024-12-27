return {
    "rcarriga/nvim-dap-ui",
    dependencies = {
        "nvim-neotest/nvim-nio",
        {
            "mfussenegger/nvim-dap",
            dependencies = { "mfussenegger/nvim-dap-python" },
            config = function()
                local dap = require("dap")
                require("dap-python").setup(vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python")
                dap.adapters.codelldb = {
                    type = "server",
                    port = "${port}",
                    executable = {
                        command = vim.fn.stdpath("data") .. "/mason/codelldb",
                        args = { "--port", "${port}" },
                        detached = false,
                    },
                }
                dap.configurations.c = {
                    {
                        name = "Launch",
                        type = "codelldb",
                        request = "launch",
                        program = function()
                            return vim.fn.input("Path to exec", vim.fn.getcwd(), "file")
                        end,
                        cwd = "${workspaceFolder}",
                        stopOnEntry = false,
                    },
                }
            end,
        },
    },
    config = true,
}
