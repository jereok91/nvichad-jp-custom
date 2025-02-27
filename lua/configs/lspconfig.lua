-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = {"intelephense", "lua_ls", "biome", "vtsls", "taplo", "eslint", "jsonls", "angularls" }

local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }


-- local project_library_path = "/home/jeremy/.local/share/nvim/mason/packages/angular-language-server/node_modules"
--
-- lspconfig.angularls.setup {
--   on_attach = nvlsp.on_attach,
--   capabilities = nvlsp.capabilities,
--   cmd = {
--     "ngserver",
--     "--stdio",
--     "--tsProbeLocations",
--     project_library_path,
--     "--ngProbeLocations",
--     project_library_path,
--   },
--   filetypes = { "typescript", "html", "typescriptreact", "angular" },
--   root_dir = lspconfig.util.root_pattern("angular.json", "package.json"),
-- }

