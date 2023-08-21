# vim-up

A bunch of stuff to vim you up. Built for Mac and Linux.
Heavily based on Square's [maximum-awesome](https://github.com/square/maximum-awesome)
repo that's no longer maintained, plus a few other goodies.

## What's in it?

* [iTerm 2](http://www.iterm2.com/)
* The [base16-shell](https://github.com/chriskempson/base16-shell) and related [base16-vim](https://github.com/chriskempson/base16-vim) colors (including iTerm colors)
* A bunch of vim bundles and moooore

### Keyboard Shortcuts

* `,d` and `,f` bring up [NERDTree](https://github.com/scrooloose/nerdtree), a sidebar buffer for navigating and manipulating files
* `,t` brings up [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim), a project file filter for easily opening specific files
* `,b` restricts ctrlp.vim to open buffers
* `,a` starts project search with [ag.vim](https://github.com/rking/ag.vim) using [the silver searcher](https://github.com/ggreer/the_silver_searcher) (like ack, but faster)
* `,z` toggles paste modes
* `ds`/`cs` delete/change surrounding characters (e.g. `"Hey!"` + `ds"` = `Hey!`, `"Hey!"` + `cs"'` = `'Hey!'`) with [vim-surround](https://github.com/tpope/vim-surround)
* `gcc` toggles current line comment
* `gc` toggles visual selection comment lines
* `vii`/`vai` visually select *in* or *around* the cursor's indent
* `Vp`/`vp` replaces visual selection with default register *without* yanking selected text (works with any visual selection)
* `,[space]` strips trailing whitespace
* `<C-]>` jump to definition using ctags
* `,l` begins aligning lines on a string, usually used as `,l=` to align assignments
* `<C-hjkl>` move between windows, shorthand for `<C-w> hjkl`
* `:GitGutterToggle` to toggle your git diff, and `:GitGutterLineHighlightsToggle` to highlight diffed lines

Note: When you see `C` here, that means Ctrl (not Cmd)!

## Install

### on macOS
    rake
    
### on Linux
    make install

## Update

### on macOS
    rake

### on Linux
    make install

This will update all installed plugins using Vundle's `:PluginInstall!`
command. If there are errors, just clear out the problem directories in
`~/.vim/bundle`.
`:help PluginInstall` provides more detailed information about Vundle.

## Customize
This creates some `.local` files for your `.vimrc` and your bundles if you'd 
like to customize everything on your local machine. If you'd like to make a PR,
don't put it in the `.local` files, just put it in the main ones!

### Colors
This repo includes a bunch of different colorschemes to test out, and by default
uses `base16-default-dark`. You'll see instructions on properly installing the 
[base16-shell](https://github.com/chriskempson/base16-shell) and related colors
after everything runs from the `rake` command.

You can test out different colors using the `colorscheme`
vim command, and just tabbing through the different options. There are a lot.
Don't be overwhelmed. :wink:

## Uninstall

### on macOS
    rake uninstall
    
### on Linux
    make uninstall

This won't remove everything, but your vim configuration should be reset to
whatever it was before installing. Some uninstallation steps will be manual.

## Acknowledgements

- Thanks to Square for their (now unmaintained) [maximum-awesome](https://github.com/square/maximum-awesome) repo
- Thanks to Tim Pope for his vim plugins
- Thanks to GitHub user [chriskempson](https://github.com/chriskempson) for his base16 work
