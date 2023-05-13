-- LSP Enable diagnostics
 vim.lsp.handlers["textDocument/publishDiagnostics"] =
    vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false,
        underline = true,
        signs = true,
        update_in_insert = false
   })

local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.setup {
error_sign = '➤',
warn_sign = '➤',
hint_sign = '➤',
infor_sign = '➤',
code_action_icon = '',
code_action_keys = {
  quit = '<ESC>',exec = '<CR>'
  },
}
vim.api.nvim_set_keymap('n', '<Leader>ca',':Lspsaga code_action<CR>',
{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fe',':Lspsaga diagnostic_jump_next<CR>',
{ noremap = true, silent = true })
