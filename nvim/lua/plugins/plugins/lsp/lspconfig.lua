-- import lspconfig plugin safely
local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

-- import cmp-nvim-lsp plugin safely
local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end


local keymap = vim.keymap -- for conciseness

-- enable keybinds only for when lsp server available
local on_attach = function(client, bufnr)
  -- keybind options
  local opts = { noremap = true, silent = true, buffer = bufnr }

  -- set keybinds
  keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
  keymap.set('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opt)
  keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opt)
  keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opt)
  keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opt)
end

-- used to enable autocompletion (assign to every lsp server config)
local capabilities = cmp_nvim_lsp.default_capabilities()

lspconfig["clangd"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

