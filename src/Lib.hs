{-# OPTIONS_GHC -fwarn-missing-signatures #-}
module Lib
    ( someFunc
    ) where

import Graphics.Gloss

someFunc :: IO ()
someFunc = display (InWindow "Nice Window" (200, 200) (100, 150)) white (Circle 80)
