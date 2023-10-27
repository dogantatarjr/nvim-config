local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    print("lsp/init.lua")
    return
end

require("user.lsp.mason")
require("user.lsp.handlers").setup()
require("user.lsp.formatonsave")
