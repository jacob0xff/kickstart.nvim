return {
  'aserowy/tmux.nvim',
  config = function()
    -- Enable tmux.nvim
    require('tmux').setup {
      -- optional: customize options here
      copy_sync = {
        enable = true, -- synchronize tmux copy with nvim yank
      },
      navigation = {
        cycle_navigation = true, -- move between panes seamlessly
      },
    }

    -- Optional: keybindings
    -- Ctrl-h/j/k/l to navigate between vim and tmux panes
    vim.keymap.set('n', '<C-h>', require('tmux').move_left)
    vim.keymap.set('n', '<C-j>', require('tmux').move_bottom)
    vim.keymap.set('n', '<C-k>', require('tmux').move_top)
    vim.keymap.set('n', '<C-l>', require('tmux').move_right)
  end,
}
