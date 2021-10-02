# vim-ui-toggle
vim plugin to toggle parts of the UI

This plugin defines commands to hide, show or toggle parts of the vim UI, like statusline, tabline etc...

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


