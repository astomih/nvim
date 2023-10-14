" Set Editor Opacity
if exists(':GuiWindowOpacity')
	GuiWindowOpacity 0.8
endif

" Set Editor Font
if exists(':GuiFont')
    " Use GuiFont! to ignore font errors
    GuiFont CaskaydiaCove Nerd Font Mono:h20
endif

" Disable GUI Tabline
if exists(':GuiTabline')
    GuiTabline 0
endif

" Disable GUI Popupmenu
if exists(':GuiPopupmenu')
    GuiPopupmenu 0
endif

" Enable GUI ScrollBar
if exists(':GuiScrollBar')
    GuiScrollBar 1
endif

" Right Click Context Menu (Copy-Cut-Paste)
nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
xnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
snoremap <silent><RightMouse> <C-G>:call GuiShowContextMenu()<CR>gv

let s:toggleFullScreen = 1
function! ToggleFullScreen()
    call GuiWindowFullScreen(s:toggleFullScreen)
    if s:toggleFullScreen == 1 
	let s:toggleFullScreen = 0
    else 
	let s:toggleFullScreen = 1
    endif
endfunction

nnoremap <F11> :call ToggleFullScreen()<CR>
