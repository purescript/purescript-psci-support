module Test.Main where

import Effect (Effect)
import Effect.Console (logShow)
import PSCI.Support (eval)
import Prelude (Unit, pure, unit)

egEvalShow :: Effect Unit
egEvalShow = eval 42

egEvalEff :: Effect Unit
egEvalEff = eval (logShow 42)

main :: Effect Unit
main = pure unit

