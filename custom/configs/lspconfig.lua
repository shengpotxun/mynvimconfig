--python
----
local config = require("plugins.configs.lspconfig") 

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")
lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})

--rust
----
local util = require "lspconfig/util"

--C++
----
lspconfig.clangd.setup{
  on_attach=function (client,bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client,bufnr)
  end,
  capabilities = capabilities,

}
