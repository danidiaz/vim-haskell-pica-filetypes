" Inspired by the cabal syntax file, but much simplified.
"
" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" this file uses line continuation
let s:cpo_save = &cpo
set cpo&vim

" set iskeyword for this syntax script
syn iskeyword @,48-57,192-255,-

" Case sensitive matches
syn case match

syn match cabalProjectComment /--.*$/

" Case insensitive matches
syn case ignore

syn keyword cabalProjectStatement 
        \ packages
        \ optional-packages
        \ extra-packages
        \ verbose
        \ jobs
        \ keep-going
        \ constraints
        \ preferences
        \ allow-newer
        \ allow-older
        \ index-state
        \ reject-unconstrained-dependencies
        \ flags
        \ with-compiler
        \ with-hc-pkg
        \ optimization
        \ configure-options
        \ compiler
        \ tests
        \ benchmarks
        \ extra-prog-path
        \ run-tests
        \ debug-info
        \ split-sections
        \ split-objs
        \ executable-stripping
        \ library-stripping
        \ program-prefix
        \ program-suffix
        \ shared
        \ executable-dynamic
        \ library-for-ghci
        \ relocatable
        \ static
        \ executable-static
        \ extra-include-dirs
        \ extra-lib-dirs
        \ extra-framework-dirs
        \ profiling
        \ profiling-detail
        \ library-profiling-detail
        \ library-vanilla
        \ library-profiling
        \ executable-profiling
        \ coverage
        \ library-coverage
        \ documentation
        \ doc-index-file
        \ haddock-hoogle
        \ haddock-html
        \ haddock-html-location
        \ haddock-executables
        \ haddock-tests
        \ haddock-benchmarks
        \ haddock-all
        \ haddock-internal
        \ haddock-css
        \ haddock-hyperlink-source
        \ haddock-hscolour-css
        \ haddock-contents-location
        \ haddock-keep-temp-files
        \ write-ghc-environment-files
        \ http-transport
        \ ignore-expiry
        \ remote-repo-cache
        \ logs-dir
        \ build-summary
        \ local-repo
        \ world-file
        \ solver
        \ max-backjumps
        \ reorder-goals
        \ count-conflicts
        \ minimize-conflict-set
        \ strong-flags
        \ allow-boot-library-installs
        \ cabal-lib-version

" Define the default highlighting.
" Only when an item doesn't have highlighting yet
hi def link cabalProjectComment      Comment
hi def link cabalProjectStatement    Statement

let b:current_syntax = "cabal-project"

let &cpo = s:cpo_save
unlet! s:cpo_save

" vim: ts=8
