" Inspired in the cabal syntax file, but simplified.
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

syn match cabalConfigComment /--.*$/

" Case insensitive matches
syn case ignore

syn keyword cabalConfigCategory
	\ repository
        \ haddock
        \ install-dirs
        \ program-locations
        \ program-default-options

syn keyword cabalConfigStatement 
        \ url
        \ secure
        \ root-keys
        \ key-threshold
        \ default-user-config
        \ require-sandbox
        \ ignore-sandbox
        \ ignore-expiry
        \ http-transport
        \ nix
        \ remote-repo-cache
        \ local-repo
        \ logs-dir
        \ world-file
        \ store-dir
        \ verbose
        \ compiler
        \ cabal-file
        \ with-compiler
        \ with-hc-pkg
        \ program-prefix
        \ program-suffix
        \ library-vanilla
        \ library-profiling
        \ shared
        \ static
        \ executable-dynamic
        \ executable-static
        \ profiling
        \ executable-profiling
        \ profiling-detail
        \ library-profiling-detail
        \ optimization
        \ debug-info
        \ library-for-ghci
        \ split-sections
        \ split-objs
        \ executable-stripping
        \ library-stripping
        \ configure-option
        \ user-install
        \ package-db
        \ flags
        \ extra-include-dirs
        \ deterministic
        \ cid
        \ extra-lib-dirs
        \ extra-framework-dirs
        \ extra-prog-path
        \ instantiate-with
        \ tests
        \ coverage
        \ library-coverage
        \ exact-configuration
        \ benchmarks
        \ relocatable
        \ response-files
        \ allow-depending-on-private-libs
        \ cabal-lib-version
        \ constraint
        \ preference
        \ solver
        \ allow-older
        \ allow-newer
        \ write-ghc-environment-files
        \ documentation
        \ doc-index-file
        \ target-package-db
        \ max-backjumps
        \ reorder-goals
        \ count-conflicts
        \ minimize-conflict-set
        \ independent-goals
        \ shadow-installed-packages
        \ strong-flags
        \ allow-boot-library-installs
        \ reject-unconstrained-dependencies
        \ reinstall
        \ avoid-reinstalls
        \ force-reinstalls
        \ upgrade-dependencies
        \ index-state
        \ root-cmd
        \ symlink-bindir
        \ build-summary
        \ build-log
        \ remote-build-reporting
        \ report-planning-failure
        \ per-component
        \ one-shot
        \ run-tests
        \ jobs
        \ keep-going
        \ offline
        \ project-file
        \ lib
        \ package-env
        \ overwrite-policy
        \ install-method
        \ installdir
        \ username
        \ password
        \ password-command
        \ builddir
        \ keep-temp-files
        \ hoogle
        \ html
        \ html-location
        \ executables
        \ tests
        \ benchmarks
        \ foreign-libraries
        \ all
        \ internal
        \ css
        \ hyperlink-source
        \ quickjump
        \ hscolour-css
        \ contents-location
        \ init
        \ interactive
        \ cabal-version
        \ license
        \ tests
        \ test-dir
        \ language
        \ application-dir
        \ source-dir
        \ prefix
        \ bindir
        \ libdir
        \ libsubdir
        \ dynlibdir
        \ libexecdir
        \ libexecsubdir
        \ datadir
        \ datasubdir
        \ docdir
        \ htmldir
        \ haddockdir
        \ sysconfdir
        \ prefix
        \ bindir
        \ libdir
        \ libsubdir
        \ dynlibdir
        \ libexecdir
        \ libexecsubdir
        \ datadir
        \ datasubdir
        \ docdir
        \ htmldir
        \ haddockdir
        \ sysconfdir
        \ alex-location
        \ ar-location
        \ c2hs-location
        \ cpphs-location
        \ doctest-location
        \ gcc-location
        \ ghc-location
        \ ghc-pkg-location
        \ ghcjs-location
        \ ghcjs-pkg-location
        \ greencard-location
        \ haddock-location
        \ happy-location
        \ haskell-suite-location
        \ haskell-suite-pkg-location
        \ hmake-location
        \ hpc-location
        \ hsc2hs-location
        \ hscolour-location
        \ jhc-location
        \ ld-location
        \ pkg-config-location
        \ runghc-location
        \ strip-location
        \ tar-location
        \ uhc-location
        \ alex-options
        \ ar-options
        \ c2hs-options
        \ cpphs-options
        \ doctest-options
        \ gcc-options
        \ ghc-options
        \ ghc-pkg-options
        \ ghcjs-options
        \ ghcjs-pkg-options
        \ greencard-options
        \ haddock-options
        \ happy-options
        \ haskell-suite-options
        \ haskell-suite-pkg-options
        \ hmake-options
        \ hpc-options
        \ hsc2hs-options
        \ hscolour-options
        \ jhc-options
        \ ld-options
        \ pkg-config-options
        \ runghc-options
        \ strip-options
        \ tar-options
        \ uhc-options

" Define the default highlighting.
" Only when an item doesn't have highlighting yet
hi def link cabalConfigComment      Comment
hi def link cabalConfigStatement    Statement
hi def link cabalConfigCategory     Type

let b:current_syntax = "cabal-config"

let &cpo = s:cpo_save
unlet! s:cpo_save

" vim: ts=8
