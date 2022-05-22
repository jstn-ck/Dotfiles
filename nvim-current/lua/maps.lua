local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<Esc>', ':nohl<CR><C-l>')

map('n', 'ss', ':split<Return><C-w>w')
map('n', 'sv', ':vsplit<Return><C-w>w')

map('n', '<C-a>', 'gg<S-v>G')

map('n', 'dw', 'vb"_d')

map('n', 'x', '"_x')

map('v', 'sc', '"*yy')

map('n', 'Y', 'v$')

map('n', 'sf', ':NvimTreeToggle<CR>')            
map('n', '<C-f>f', ':NvimTreeFindFile<CR>')      

-- -- Terminal mappings
-- map('n', '<C-t>', ':Term<CR>', { noremap = true }) 
-- map('t', '<Esc>', '<C-\\><C-n>')                   
