module Test.Main where

import Prelude (pure, unit, Unit)
import PSCI.Support (eval)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, logShow)

egEvalShow :: Eff (console :: CONSOLE) Unit
egEvalShow = eval 42

egEvalEff :: Eff (console :: CONSOLE) Unit
egEvalEff = eval (logShow 42)

main :: Eff () Unit
main = pure unit

