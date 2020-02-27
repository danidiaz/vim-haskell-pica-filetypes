# vim-haskell-pica-filetypes

## filetype detection

This plugin provides filetype detection for the following files:

- `cabal.project` as filetype *cabal-project*
- `cabal.project.local` as filetype *cabal-project*
- `cabal.config` and `*/cabal/config` as filetype *cabal-config*

## changes to 'iskeyword'

- This plugin adds the single quote `'` to `iskeyword` for the `haskell` filetype—reasonable, because it is a valid part of identifiers).

- This plugin adds the hypen `-` to `iskeyword` for the `haskell`, `cabal-project` and `cabal-config` filetypes—reasonable, because many stanza names and package names have hypens.

`iskeyword` affects the behaviour of commands like normal mode `w`. See :h 'iskeyword'.

# stuff I found useful while writing this plugin

- `:h new-filetype`.
- `:h ftdetect`.
- `:h iskeyword`
- [Can I disable continuation of comments to the next line in Vim?](https://superuser.com/questions/271023/can-i-disable-continuation-of-comments-to-the-next-line-in-vim)
