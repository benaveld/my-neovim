# Chetsheet

## nvim-treesitter-textobjects
* `<leader>df` peek at function definition
* `<leader>dF` peek at class definition
* `<leader>a` swap paramter with next paramter
* `<leader>A` swap paramter with previous paramter
* `]m` goto next function start
* `]]` goto next class start
* `]M` goto next function end
* `][` goto next class end
* `[m` goto previous function start
* `[[` goto previous class start
* `[M` goto previous function end
* `[]` goto previous class end

### Motion
* `af` select outer function
* `if` select inner function
* `ac` select outer class
* `ic` select inner class

## nvim-treesitter-refactor
* `grr` smart rename
* `gnd` goto definition
* `gnD` list definitions
* `gO` list definitions
* `<a-*>` goto next usage
* `<a-#>` goto previous usage

## nerdcommenter
The following key mappings are provided by default (there is also a menu provided that contains menu items corresponding to all the below mappings):
Most of the following mappings are for normal/visual mode only. The **|NERDCommenterInsert|** mapping is for insert mode only.

  * `[count]<leader>cc` **|NERDCommenterComment|**
    Comment out the current line or text selected in visual mode.

  * `[count]<leader>cn` **|NERDCommenterNested|**
    Same as <leader>cc but forces nesting.

  * `[count]<leader>c<space>` **|NERDCommenterToggle|**
    Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.

  * `[count]<leader>cm` **|NERDCommenterMinimal|**
    Comments the given lines using only one set of multipart delimiters.

  * `[count]<leader>ci` **|NERDCommenterInvert|**
    Toggles the comment state of the selected line(s) individually.

  * `[count]<leader>cs` **|NERDCommenterSexy|**
    Comments out the selected lines with a pretty block formatted layout.

  * `[count]<leader>cy` **|NERDCommenterYank|**
    Same as <leader>cc except that the commented line(s) are yanked first.

  * `<leader>c$` **|NERDCommenterToEOL|**
    Comments the current line from the cursor to the end of line.

  * `<leader>cA` **|NERDCommenterAppend|**
    Adds comment delimiters to the end of line and goes into insert mode between them.

  * **|NERDCommenterInsert|**
    Adds comment delimiters at the current cursor position and inserts between. Disabled by default.

  * `<leader>ca` **|NERDCommenterAltDelims|**
    Switches to the alternative set of delimiters.

  * `[count]<leader>cl` **|NERDCommenterAlignLeft**
    `[count]<leader>cb` **|NERDCommenterAlignBoth**
    Same as **|NERDCommenterComment|** except that the delimiters are aligned down the left side (`<leader>cl`) or both sides (`<leader>cb`).

  * `[count]<leader>cu` **|NERDCommenterUncomment|**
    Uncomments the selected line(s).


