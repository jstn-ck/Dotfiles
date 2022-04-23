local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Highlight on yank
augroup('YankHighlight', { clear = true })
autocmd('TextYankPost', {
  group = 'YankHighlight',
  callback = function()
    vim.highlight.on_yank({ higroup = 'IncSearch', timeout = '1000' })
  end
})

autocmd ('BufWritePre', {
  pattern = '*',
  command = 'set ff=unix'
})

-- -- Remove whitespace on save
-- autocmd('BufWritePre', {
--   pattern = '*',
--   command = ":%s/\\s\\+$//e"
-- })

-- Don't auto commenting new lines
autocmd('BufEnter', {
  pattern = '*',
  command = 'set fo-=c fo-=r fo-=o'
})

-- -- Settings for fyletypes:
-- -- Disable line lenght marker
-- augroup('setLineLenght', { clear = true })
-- autocmd('Filetype', {
--   group = 'setLineLenght',
--   pattern = { 'text', 'markdown', 'html', 'xhtml', 'javascript', 'typescript' },
--   command = 'setlocal cc=0'
-- })

-- -- Set indentation to 2 spaces
-- augroup('setIndent', { clear = true })
-- autocmd('Filetype', {
--   group = 'setIndent',
--   pattern = { 'xml', 'html', 'xhtml', 'css', 'scss', 'javascript', 'typescript',
--     'yaml', 'lua'
--   },
--   command = 'setlocal shiftwidth=2 tabstop=2'
-- })

-- -- Terminal settings:
-- -- Open a Terminal on the right tab
-- autocmd('CmdlineEnter', {
--   command = 'command! Term :botright vsplit term://$SHELL'
-- })

-- -- Enter insert mode when switching to terminal
-- autocmd('TermOpen', {
--   command = 'setlocal listchars= nonumber norelativenumber nocursorline',
-- })

-- autocmd('TermOpen', {
--   pattern = '*',
--   command = 'startinsert'
-- })

-- -- Close terminal buffer on process exit
-- autocmd('BufLeave', {
--   pattern = 'term://*',
--   command = 'stopinsert'
-- })
