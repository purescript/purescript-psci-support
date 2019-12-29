-- | This module provides support for the
-- | PureScript interactive mode, PSCI.

module PSCI.Support where

import Prelude (class Show, Unit, bind, void, ($), (>>=))

import Effect (Effect)
import Effect.Console (logShow)
import Effect.Exception (throwException)
import Effect.Aff (Aff, Fiber(..), launchAff)
import Data.Either (Either(..))

-- | The `Eval` class captures those types which can be
-- | evaluated in the REPL.
-- |
-- | There are instances provided for the `Effect` type
-- | constructor and any `Show`able types.
class Eval a where
  eval :: a -> Effect Unit

instance evalAff :: Eval a => Eval (Aff a) where
  eval aff = do
    Fiber fiberRec <- launchAff aff
    void $ fiberRec.join
      (case _ of
        Left err -> throwException err
        Right a -> eval a
      )
else
instance evalEffect :: Eval a => Eval (Effect a) where
  eval x = x >>= eval
else
instance evalShow :: Show a => Eval a where
  eval = logShow

