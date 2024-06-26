return {
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  {
    "baliestri/aura-theme",
    lazy = false,
    priority = 1000,
    config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
      vim.cmd([[colorscheme aura-dark]])

      -- Set cross-hair colors
			vim.cmd([[highlight CursorLine ctermbg=Yellow cterm=bold guibg=#32394a]])
			vim.cmd([[highlight CursorColumn ctermbg=Yellow cterm=bold guibg=#32394a]])

      -- Transparent background
      vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")

      -- #CF9FFF
      vim.cmd("highlight MatchParen guifg=#ffffff guibg=#CF9FFF")
    end,
  }
}
