local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
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