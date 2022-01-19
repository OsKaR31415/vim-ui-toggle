
# vim-ui-toggle

vim plugin to toggle parts of the UI

This plugin defines commands to hide, show or toggle parts of the vim UI, like statusline, tabline etc...

The plugin also allows you to cycle between different background colors.

If you have any idea of a new part of the UI i could integrate in this plugin, please make an issue !

# why doing that ?

I feel like i often want to win a little bit of space on a window that is already small (like the quickfix list after make).
So having the ability to quickly toggle parts of the UI is quite important.
Also, when all the parts of the UI are hidden, it is kind of what other editors call "Zen mode" or "focus mode" : you only see your code. The plugin [goyo.vim](https://github.com/junegunn/goyo.vim) does that, but it also "zooms" on one single file (others are hidden and it is put in full-screen), while just hiding parts of the UI keeps the windows-structure.

# Available commands

Here is a list of the available commands.
All of them are self-descriptive

| part of the UI | action | command |
| -------------- | ------ | ------- |
| **status line** | | |
| | show   | `StatuslineShow` |
| | hide   | `StatuslineHide` |
| | toggle | `StatuslineToggle` |
| **tab line** | | |
| | show   | `TablineShow` |
| | hide   | `TablineHide` |
| | toggle | `TablineToggle` |
| **line numbers** | | |
| | show   | `LineNumbersShow` |
| | hide   | `LineNumbersHide` |
| | toggle | `LineNumbersToggle` |
| **relative numbering** | | |
| | on     | `RelativeNumberingOn` |
| | off (norelativenumbers) | `RelativeNumberingOff` |
| | toggle | `RelativeNumberingToggle` |
| **cursor cross** | | |
| | on     | `CursorCrossOn` |
| | off    | `CursorCrossOff` |
| | toggle | `CursorCrossToggle` |
| **sign column** | | |
| | on     | SignColumnOn |
| | off    | SignColumnOff |
| | number | SignColumnNumber |
| | cycle  | SignColumnCycle |
| **background color** | | |
| | next color | `BackgroundColorCycle` |
| | previous color | `BackgroundColorCycleBack` |
| | reset color | `BackgroudColorReset` |
| **all the UI** | | |
| | toggle | `UItoggle` |
| | reset  | `UIreset` |

## about the backgroud colors

The `BackgroundColorCycle` and `BackgroundColorCycleBack` commands are cycling over a list of background colors

In order to change these colors, you can set the variable `g:background_colors_list`. This is a list of the possible background colors.
The default value is a list of greys :

```vim
let g:background_colors_list = ["none", "232", "233", "234", "235"]
```

The command `BackgroundColorReset` resets the color to the **first color in the list**.

Background colors are, for the moment, only for terminal-based colored vim (the `cterm` option of `highlight` is used).
Since i do not use graphical versions of vim, i do not plan to extend that to support gvim or macVim. But that could happend if i have the time to do so.

# key bindings

I personally use these keybindings :

```vim
Plug 'OsKaR31415/vim-ui-toggle'
let g:background_colors_list = ["none", "234", "235", "233", "232"]
" UI hide and show
nnoremap <silent> <leader>us :StatuslineToggle<cr>
nnoremap <silent> <leader>ut :TablineToggle<cr>
nnoremap <silent> <leader>ul :LineNumbersToggle<cr>
nnoremap <silent> <leader>un :RelativeNumberingToggle<cr>
nnoremap <silent> <leader>uc :CursorCrossToggle<cr>
nnoremap <silent> <leader>ug :SignColumnToggle<cr>
" cycle between different colors
nnoremap <silent> <leader>ub :BackgroundColorCycle<cr>
nnoremap <silent> <leader>uB :BackgroundColorReset<cr>
" toggle all of them
nnoremap <silent> <leader>uu :UItoggle<cr>
nnoremap <silent> <leader>uq :UItoggle<cr>
nnoremap <silent> <leader>ur :UIreset<cr>
```

They are not set by default, so you have to copy them in your `.vimrc`

Also, i use the [vim-arpeggio](https://kana/vim-arpeggio) plugin, so i can press the keys at the same time (ex: `<leader>ul` at the same time, not in a sequence).



