--------------------------------------------------------------------------------
-- Functional Programming (CS141)                                             --
-- Lecture: Input and output                                                  --
--------------------------------------------------------------------------------

module JSON where

--------------------------------------------------------------------------------

import Lab -- solutions to the applicative functors lab are needed

--------------------------------------------------------------------------------
-- JSON representation

type Object = [(String, Value)]
type Array  = [Value]

data Value = Obj Object
           | Arr Array
           | Str String
           | Num Integer
           | Bool Bool
           | Null
           deriving Show

--------------------------------------------------------------------------------
-- JSON parsing

-- Reminder:
-- instance Functor Parser
-- instance Applicative Parser
-- instance Monad Parser



--------------------------------------------------------------------------------
