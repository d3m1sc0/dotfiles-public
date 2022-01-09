local status_ok, lspcolors = pcall(require, "lsp-colors")
if not status_ok then
	return
end


lspcolors.setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})
