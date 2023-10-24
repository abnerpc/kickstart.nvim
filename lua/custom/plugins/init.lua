-- netrw configuration
vim.g.netrw_list_hide = '.*.swp$,.*.pyc$,.git,.idea,.pytest_cache,.vscode'
vim.g.netrw_banner = 0
vim.g.netrw_localrmdir = 'rm -r'

-- no wrap
vim.opt.wrap = false


-- Copy current file path within the folder
vim.keymap.set('n', '<leader>c', function()
  local current_path = vim.fn.expand '%:.'
  vim.fn.setreg('+y', current_path)
end)


-- Set abbreviations
vim.cmd [[inorea ptr __import__("pytest").set_trace()]]
vim.cmd [[inorea brk breakpoint()]]


return {}
