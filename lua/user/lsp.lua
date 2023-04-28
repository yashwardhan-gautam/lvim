-- configure tsserver server manually.
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "tsserver" })

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup({
  {
    command = "prettierd",
    filetypes = {
      "css",
      "html",
      "yaml",
      "markdown",
      "json",
    }
  },
})

lvim.lsp.diagnostics.float.max_width = 120
lvim.lsp.diagnostics.float.focusable = true
