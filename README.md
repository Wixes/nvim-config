# Starting point for this repo is kickstart.nvim. To understand what kickstart is, please check the original repo.

## About this repo
This is basically my own configuration for kickstart nvim with adapted changes for myself

## Changes:

### Keybindings:
- **leader-ff** - format file with formatter. Implemented by `conform` plugin
- **leader-fs** - save all buffers. Implemented by vim command `:wa`

### Commands:
- :DiffviewOpen - open diff view
- :Neogit - open neogit menu with all files and other stuff

### Plugins:
- **neo-tree** - plugin to browse the file system. [doc/keymaps here](https://github.com/nvim-neo-tree/neo-tree.nvim/blob/main/doc/neo-tree.txt)
- **gitsigns** - plugin to integrate git with nvim. [github here](https://github.com/lewis6991/gitsigns.nvim)
- **neogit** - plugin for integrating git into the neovim.
- **diffview** - plugin for viewing git diffs in one tabpage

### Other:
- `eslint` is responsible for formatting *typescript* and *javascript* files. So, you **need** to integrate prettier in eslint or make the custom format rules
