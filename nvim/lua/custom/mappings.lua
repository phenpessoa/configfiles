local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
    ["<leader>dc"] = { "<cmd> DapContinue <CR>" },
    ["<leader>ds"] = { "<cmd> DapStepInto <CR>" },
    ["<leader>do"] = { "<cmd> DapStepOut <CR>" },
    ["<leader>dn"] = { "<cmd> DapStepOver <CR>" },
    ["<leader>dh"] = {
      function ()
        local dap = require("dap")
        local dap_sessions = dap.sessions()

        for _, session in pairs(dap_sessions) do
          if (session.filetype == "go") then
            vim.api.nvim_command("GoDbgStop")
          end
        end

        if next(dap_sessions) then
          vim.api.nvim_command("DapStop")
        end
      end,
      "Terminate debug session"
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    },
    ["<leader>dw"] = {
      function ()
        require('dap').clear_breakpoints()
      end,
      "Clear all breakpoints"
    },
  }
}

M.dapui = {
  plugin = true,
  n = {
    ["<leader>dt"] = {
      function ()
        local dapui = require('dapui')
        dapui.toggle()
      end,
      "Toggle dapui"
    },
    ["<leader>dr"] = {
      function ()
        local dapui = require('dapui')
        dapui.open({reset = true})
      end,
      "Reset dapui"
    },
    ["<leader>dT"] = {
      function ()
        local render = require("dapui.config").render
        render.max_type_length = (render.max_type_length == nil) and 0 or nil
        require("dapui").update_render(render)
      end,
      "Toggle types on dapui locals"
    },
  },
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require('dap-go').debug_test()
      end,
      "Debug go test"
    },
    ["<leader>dgl"] = {
      function()
        require('dap-go').debug_last_test()
      end,
      "Debug last go test"
    },
  },
}

M.crates = {
  plugin = true,
  n = {
    ["<leader>rcu"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "update crates"
    }
  }
}

M.go = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoAddTag json <CR>",
      "Add json struct tags"
    },
    ["<leader>gsy"] = {
      "<cmd> GoAddTag yaml <CR>",
      "Add yaml struct tags"
    }
  }
}

M.fugitive = {
  plugin = true,
  n = {
    ["<leader>grh"] = {
      function()
        vim.cmd("wa!")
        vim.cmd("Git reset --hard")
        vim.cmd("checktime")
      end,
      "Save all buffers, run git reset --hard and reload all buffers",
    },
    ["<leader>gaa"] = {
      "<cmd> Git add -A <CR>",
      "Runs git add -A",
    },
  }
}

M.diffview = {
  plugin = true,
  n = {
    ["<leader>gvo"] = {
      "<cmd> DiffviewOpen <CR>",
      "Opens diff view",
    },
    ["<leader>gvc"] = {
      "<cmd> DiffviewClose <CR>",
      "Closes diff view",
    }
  }
}

M.trouble = {
  plugin = true,
  n = {
    ["<S-T>"] = {
      "<cmd> Trouble <CR>",
      "Opens trouble",
    },
  }
}

return M