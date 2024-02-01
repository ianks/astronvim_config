return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.pack.nix" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.just" },
  { import = "astrocommunity.test.neotest" },
  { import = "astrocommunity.git.git-blame-nvim" },
}
