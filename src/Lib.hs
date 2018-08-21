{-# OPTIONS_GHC -fwarn-missing-signatures #-}
module Lib
    ( someFunc
    ) where

import Graphics.Gloss

someFunc :: IO ()
someFunc = display (InWindow "Nice Window" (200, 200) (10, 15)) white (Circle 80)
