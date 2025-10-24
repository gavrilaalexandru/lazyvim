return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    opts.keymap = {
      preset = "super-tab",
      ["<CR>"] = { "fallback" },
    }
    opts.enabled = function()
      local node = vim.treesitter.get_node()
      if node then
        local node_type = node:type()
        if node_type:match("string") or node_type:match("comment") then
          return false
        end
      end
      return true
    end
    return opts
  end,
}
