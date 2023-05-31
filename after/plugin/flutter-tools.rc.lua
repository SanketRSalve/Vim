require('flutter-tools').setup{}
vim.api.nvim_set_keymap('n', '<leader>fr', ':FlutterRun<CR>',
  { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>fc',
[[<Cmd>lua require('telescope').extensions.flutter.commands()<CR>]],
{ noremap = true, silent = true })
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true;

require("flutter-tools").setup{

lsp = {
    capabilities = capabilities,                                                                    }
      }

vim.g.vsnip_snippet_dir = '/Users/sanketsalve/.local/share/nvim/snippets/';

-- LSP Enable diagnostics
 vim.lsp.handlers["textDocument/publishDiagnostics"] =
    vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false,
        underline = true,
        signs = true,
        update_in_insert = false
   })

--vim.cmd 'au BufWritePre *.dart :DartFmt'


