
" TABLINE

fun! TablineHide()
    set showtabline=0
endfun
command! TablineHide call TablineHide()

fun! TablineShow()
    set showtabline=1
endfun
command! TablineShow call TablineShow()

fun! TablineToggle()
    if &showtabline > 0
        set showtabline=0
    else
        set showtabline=2
    endif
endfun
command! TablineToggle call TablineToggle()

" STATUSLINE

let s:is_statusline_hidden = 0

fun! StatuslineHide()
    let s:is_statusline_hidden = 1
    set noshowmode
    set noruler
    set laststatus=0
    set noshowcmd
endfun
command! StatuslineHide call StatuslineHide()

fun! StatuslineShow()
    let s:is_statusline_hidden = 0
    set showmode
    set ruler
    set laststatus=2
    set showcmd
endfun
command! StatuslineShow call StatuslineShow()

fun! StatuslineToggle()
    if s:is_statusline_hidden
        call StatuslineShow()
    else
        call StatuslineHide()
    endif
endfun
command! StatuslineToggle call StatuslineToggle()


" LINE NUMBERS

let s:are_line_numbers_hidden = 0

fun! LineNumbersHide()
    let s:are_line_numbers_hidden = 1
    set nonumber
    set norelativenumber
endfun
command! LineNumbersHide call LineNumbersHide()

fun! LineNumbersShow()
    let s:are_line_numbers_hidden = 0
    set number
    if s:is_numbering_relative
        set relativenumber
    endif
endfun
command! LineNumbersShow call LineNumbersShow()

fun! LineNumbersToggle()
    if s:are_line_numbers_hidden
        call LineNumbersShow()
    else
        call LineNumbersHide()
    endif
endfun
command! LineNumbersToggle call LineNumbersToggle()

" RELATIVE NUMBERING

let s:is_numbering_relative = 1

fun! RelativeNumberingOn()
    let s:is_numbering_relative = 1
    set relativenumber
endfun
command! RelativeNumberingOn call RelativeNumberingOn()

fun! RelativeNumberingOff()
    let s:is_numbering_relative = 0
    set norelativenumber
endfun
command! RelativeNumberingOff call RelativeNumberingOff()

fun! RelativeNumberingToggle()
    if s:is_numbering_relative
        call RelativeNumberingOff()
    else
        call RelativeNumberingOn()
    endif
endfun
command! RelativeNumberingToggle call RelativeNumberingToggle()

" BACKGROUND

let s:background_color_index = 0
let s:background_colors_list = ["black", "17", "232", "233", "234", "235"]

fun! BackgroundColorCycle()
    if s:background_color_index >= len(s:background_colors_list) - 1
        let s:background_color_index = 0
    else
        let s:background_color_index = s:background_color_index + 1
    endif
    exec "hi Normal ctermbg=" . s:background_colors_list[s:background_color_index]
endfun
command! BackgroundColorCycle call BackgroundColorCycle()

fun! BackgroundColorCycleBack()
    if s:background_color_index == 0
        let s:background_color_index = len(s:background_colors_list) - 1
    else
        let s:background_color_index = s:background_color_index - 1
    endif
    exec "hi Normal ctermbg=" . s:background_colors_list[s:background_color_index]
endfun
command! BackgroundColorCycleBack call BackgroundColorCycleBack()

fun! BackgroundColorReset()
    hi Normal ctermbg=232
endfun
command! BackgroundColorReset call BackgroundColorReset()


" GENERAL

fun! UItoggle()
    call TablineToggle()
    call StatuslineToggle()
    call LineNumbersToggle()
endfun
command! UItoggle call UItoggle()

fun! UIreset()
    call TablineShow()
    call StatuslineShow()
    call LineNumbersShow()
    call BackgroundColorReset()
endfun
command! UIreset call UIreset()

