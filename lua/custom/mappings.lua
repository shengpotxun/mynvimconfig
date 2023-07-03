local M ={}

M.general = {
  n = {
    ["<C-h>"] = {"<cmd> TmuxNavigateLeft<CR>", "window left"},
    
    ["<C-l>"] = {"<cmd> TmuxNavigateRight<CR>", "window right"},

    ["<C-j>"] = {"<cmd> TmuxNavigateDown<CR>", "window down"},

    ["<C-k>"] = {"<cmd> TmuxNavigateUp<CR>", "window up"},
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"}
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function ()
        require('dap_pyton').test_method()
      end
    }
  }
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "upgrade crates"
    }
  }
}
return M