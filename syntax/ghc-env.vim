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

" Case insensitive matches
syn case ignore

syn keyword ghcEnvStatement
            \ clear-package-db
            \ global-package-db
            \ user-package-db
            \ package-db
            \ package-id

" Define the default highlighting.
" Only when an item doesn't have highlighting yet
hi def link ghcEnvStatement    Statement

let b:current_syntax = "ghc-env"

let &cpo = s:cpo_save
unlet! s:cpo_save

" vim: ts=8
