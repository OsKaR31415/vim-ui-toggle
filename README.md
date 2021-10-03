
# vim-ui-toggle

vim plugin to toggle parts of the UI

This plugin defines commands to hide, show or toggle parts of the vim UI, like statusline, tabline etc...

The plugin also allows you to cycle between different background colors.

If you have any idea of a new part of the UI i could integrate in this plugin, please make an issue !

# why doing that ?

I feel like i often want to win a litte bit of space on a window that is already little (like the quickfix list after make).
So having the hability to quickly toggle parts of the UI is quite important.
Also, when all the parts of the UI are hidden, it is kind of what other editors call "Zen mode" or "focus mode" : you only see your code. The plugin "goyo.vim" does that, but it also "zooms" on one single file (others are hidden and it is put in full-screen), while just hiding parts of the UI keeps the windows-structure.

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
nnoremap <leader>us :StatuslineToggle<cr>
nnoremap <leader>ut :TablineToggle<cr>
nnoremap <leader>ul :LineNumbersToggle<cr>
" cycle between different colors
nnoremap <leader>ub :BackgroundColorCycle<cr>
nnoremap <leader>uB :BackgroundColorReset<cr>
" toggle all of them
nnoremap <leader>uu :UItoggle<cr>
nnoremap <leader>ur :UIreset<cr>
nnoremap <leader>un :RelativeNumberingToggle<cr>
```

They are not set by default, so you have to copy them in your `.vimrc`
