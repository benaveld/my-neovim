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

## Comment.nvim
```help
`gcc` - Toggles the current line using linewise comment
`gbc` - Toggles the current line using blockwise comment
`[count]gcc` - Toggles the number of line given as a prefix-count using linewise
`[count]gbc` - Toggles the number of line given as a prefix-count using blockwise
`gc[count]{motion}` - (Op-pending) Toggles the region using linewise comment
`gb[count]{motion}` - (Op-pending) Toggles the region using blockwise comment

`gco` - Insert comment to the next line and enters INSERT mode
`gcO` - Insert comment to the previous line and enters INSERT mode
`gcA` - Insert comment to end of the current line and enters INSERT mode
```
