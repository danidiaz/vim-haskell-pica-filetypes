# vim-haskell-pica-filetypes

Vim filetype detection and syntax highlighting for Haskell-related filetypes
that do not have them configured out-of-the-box.

## filetype detection

Filetype detection for the following files:

- `cabal.project` and `cabal.project.local` as filetype `cabal-project`
- `cabal.config` and `*/cabal/config` as filetype `cabal-config`
- [GHC package environment files](https://downloads.haskell.org/ghc/latest/docs/html/users_guide/packages.html#package-environments) as filetype `ghc-env`

## syntax highlighting

Basic syntax highlighting for the following filetypes:

- `cabal-project`
- `cabal-config`
- `ghc-env`

## changes to 'iskeyword'

The single quote `'` is added to `'iskeyword'` for the following filetypes:

- `haskell`

The hypen `-` is added to `'iskeyword'` for the following filetypes:

- `cabal`
- `cabal-project`
- `cabal-config`
- `ghc-env`

`'iskeyword'` affects the behaviour of commands like normal mode `w`. See `:h 'iskeyword'`.

# stuff I found useful while writing this plugin

- `:h new-filetype`.
- `:h ftdetect`.
- `:h iskeyword`
- [Can I disable continuation of comments to the next line in Vim?](https://superuser.com/questions/271023/can-i-disable-continuation-of-comments-to-the-next-line-in-vim)
- `:h comments`
- `:h formatoptions`
- `:h fo-table`
- [Attack of the 5,000-line vimrc](https://vimways.org/2018/from-vimrc-to-vim/)
