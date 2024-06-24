return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "rcarriga/nvim-dap-ui",
        "leoluz/nvim-dap-go"
    },
    config = function ()
        require("dapui").setup()
        require("dap-go").setup()

        local dap = require("dap")
        local dapui = require("dapui")


        dap.listeners.before.attach.dapui_config = function()
          dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
          dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
          dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
          dapui.close()
        end
        vim.keymap.set('n', '<Leader>db', function() dap.toggle_breakpoint() end)
        vim.keymap.set('n', '<Leader>dd', function() dap.continue() end)
    end
}
