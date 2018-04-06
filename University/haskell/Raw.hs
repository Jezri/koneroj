module Raw (r)
  where

import Language.Haskell.TH
import Language.Haskell.TH.Quote

r :: QuasiQuoter
r = QuasiQuoter {
    -- Extracted from dead-simple-json.
    quoteExp  = return . LitE . StringL . normaliseNewlines,

    quotePat  = \_ -> fail "illegal raw string QuasiQuote \
                           \(allowed as expression only, used as a pattern)",
    quoteType = \_ -> fail "illegal raw string QuasiQuote \
                           \(allowed as expression only, used as a type)",
    quoteDec  = \_ -> fail "illegal raw string QuasiQuote \
                           \(allowed as expression only, used as a declaration)"
}

normaliseNewlines :: String -> String
normaliseNewlines []             = []
normaliseNewlines ('\r':'\n':cs) = '\n':normaliseNewlines cs
normaliseNewlines (c:cs)         = c:normaliseNewlines cs
