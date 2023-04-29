lvim.plugins = {
  {
    "lunarvim/lunar.nvim"
  },
  {
    "lunarvim/horizon.nvim"
  },
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    config = function()
      require("persistence").setup({
        dir = vim.fn.expand(vim.fn.stdpath "state" .. "/sessions/"),
        options = { "buffers", "curdir", "tabpages", "winsize" }
      })
    end
  },
  {
    "tpope/vim-surround"
  },
  {
    "felipec/vim-sanegx",
    event = "BufRead"
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "tpope/vim-repeat"
  },
  {
    "ThePrimeagen/harpoon"
  },
  {
    "phaazon/hop.nvim",
    branch = 'v2',
    config = function()
      require('hop').setup()
    end
  },
  {
    'nvim-telescope/telescope-frecency.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'kkharji/sqlite.lua' },
  },
  {
    "AckslD/nvim-trevJ.lua",
    config = 'require("trevj").setup()',
    init = function()
      vim.keymap.set('n', '<leader>j', function()
        require('trevj').format_at_cursor()
      end)
    end,
  },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "iamcco/markdown-preview.nvim",
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
  },
  {
    'saecki/crates.nvim',
    version = 'v0.3.0',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('crates').setup()
    end,
  }
}

lvim.builtin.telescope.on_config_done = function(telescope)
  pcall(telescope.load_extension, "frecency")
end
