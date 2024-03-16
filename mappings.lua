return {
  n = {
    -- Navigation
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    -- Buffer mappings
    ["<leader>bD"] = {
      desc = "Pick to close",
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
    },
    ["<leader>b"] = { name = "Buffers" },

    -- File mappings
    ["<leader>fs"] = { function() require("telescope.builtin").find_files() end, desc = "Find files" },

    -- Test mappings
    ["<leader>tn"] = {
      desc = "Test nearest",
      function() require("neotest").run.run() end,
    },
    ["<leader>tf"] = {
      desc = "Test file",
      function() require("neotest").run.run(vim.fn.expand "%") end,
    },
    ["<leader>td"] = {
      desc = "Test debug",
      function() require("neotest").run.run { strategy = "dap", suite = false } end,
    },
    ["<leader>ta"] = {
      desc = "Test attach",
      function() require("neotest").run.attach() end,
    },

    -- Terminal mappings
    ["<leader>tt"] = { "<cmd>ToggleTerm direction=float<cr>", desc = "ToggleTerm float" }, -- also use <F7>
    ["<C-`>"] = { "<cmd>ToggleTerm direction=float<cr>", desc = "ToggleTerm float" }, -- also use <F7>
    ["<M-`>"] = { "<cmd>ToggleTerm direction=float<cr>", desc = "ToggleTerm float" }, -- also use <F7>
  },
  t = {
    ["<C-`>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<M-`>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
  },
}
