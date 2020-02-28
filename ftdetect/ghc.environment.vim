au BufRead,BufNewFile .ghc.environment.*     set filetype=ghc-env
au BufRead,BufNewFile $GHC_ENVIRONMENT set filetype=ghc-env
au BufRead,BufNewFile ~/.ghc/*-*-[0123456789]*[0123456789]/environments/*     set filetype=ghc-env
