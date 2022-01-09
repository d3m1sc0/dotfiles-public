local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "demisco.lsp.lsp-installer"
require("demisco.lsp.handlers").setup()
require "demisco.lsp.powershell_es"
