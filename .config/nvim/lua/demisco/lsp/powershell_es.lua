local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
	return
end


lspconfig.powershell_es.setup{
  bundle_path = 'c:/Users/demetris.mina/AppData/local/nvim-data/lsp_servers/powershell_es',
}

