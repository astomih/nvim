-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	-- 全角
	vim.cmd([[
if executable('zenhan')
  autocmd InsertLeave * :call system('zenhan 0')
  autocmd CmdlineLeave * :call system('zenhan 0')
endif
]]),
}
