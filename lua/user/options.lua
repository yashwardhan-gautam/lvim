if vim.g.neovide then
  -- vim.opt.guifont = "MonoLisa:h24"

  vim.g.neovide_transparency = 1
  vim.g.transparency = 0.8
  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_input_macos_alt_is_meta = false
end

-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = false


lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  pattern = "*.lua",
  timeout = 1000,
}

lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "cpp",
  "json",
  "lua",
  "python",
  "rust",
}

lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.nvimtree.setup.filters.custom = {}

lvim.builtin.treesitter.ignore_install = {}
lvim.builtin.treesitter.highlight.enabled = true

lvim.builtin.project.detection_methods = { "lsp", "pattern" }
lvim.builtin.project.patterns = {
  "Cargo.toml",
  ".git",
  "package-lock.json",
  "yarn.lock",
  "package.json",
  "requirements.txt",
}

vim.opt.shell = "/bin/bash"
lvim.format_on_save = true

vim.o.linebreak = true
vim.o.wrap = false
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

lvim.builtin.telescope.defaults.path_display = {
  shorten = 4,
}
