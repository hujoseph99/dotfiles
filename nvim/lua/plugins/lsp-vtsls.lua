return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      vtsls = {
        settings = {
          vtsls = {
            typescript = {
              globalTsdk = "/Users/joseph.hu/code/universe/node_modules/typescript/lib",
            },
          },
          typescript = {
            tsserver = {
              maxTsServerMemory = 8192,
            },
            inlayHints = {
              enumMemberValues = { enabled =  false },
              functionLikeReturnTypes = { enabled = false },
              parameterNames = { enabled = "none" },
              parameterTypes = { enabled =  false },
              propertyDeclarationTypes = { enabled =  false },
              variableTypes = { enabled = false },
            },
          },
        },
      },
    },
  },
}
