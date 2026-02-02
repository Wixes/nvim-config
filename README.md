# Starting point for this repo is kickstart.nvim. To understand what kickstart is, please check the original repo.

## About this repo
This is basically my own configuration for kickstart nvim with adapted changes for myself

## Changes:

### Keybindings for comfortable work:
- **leader-ff** - format file with formatter. Implemented by `conform` plugin
- **leader-fs** - save all buffers. Implemented by vim command `:wa`
- **leader-g** - git stuff
- **leader-h** - git hunk stuff
- **gr** - lsp stuff
- **g-*** - search for cursor word. n - next mention, N - prev mention
- **ctrl+i** - next buffer
- **ctrl+o** - prev buffer
- **shift+k** - show type of variable on cursor
- **ctrl+space** - trigger autocompletion window
- [diffview] **leader-c+(a/t/o)** - accept all/theirs/ours
- [diffview] **g-ctrl+x** - change merge layout


### Commands:
- :DiffviewOpen - open diff view
- :Neogit - open neogit menu with all files and other stuff
- :verbose imap <key> - shows which plugin intersect hotkey in insert mode and what file last time used for it
- :map - show hotkey mappings

### Plugins:
- **neo-tree** - plugin to browse the file system. [doc/keymaps here](https://github.com/nvim-neo-tree/neo-tree.nvim/blob/main/doc/neo-tree.txt)
- **gitsigns** - plugin to integrate git with nvim. [github here](https://github.com/lewis6991/gitsigns.nvim)
- **neogit** - plugin for integrating git into the neovim.
- **diffview** - plugin for viewing git diffs in one tabpage

### Other:
- `eslint` is responsible for formatting *typescript* and *javascript* files. So, you **need** to integrate prettier in eslint or make the custom format rules
- If autoclosing tags is not working, check nvim-treesitter (:checkhealth nvim-treesitter). It should
show you that you have installed tsx and typescript languages (without them it will not work).
So, if you don't have one and it's not installing through :TSInstall typescript tsx, you need to
install tree-sitter-cli through npm globally (npm install -g tree-sitter-cli). After that
you will be able to install typescript and tsx through :TSInstall
