{-# OPTIONS_GHC -fwarn-missing-signatures #-}
module Lib
    ( someFunc
    , someFunc2
    ) where

import Graphics.Gloss

import Data.Word
import Data.ByteString (ByteString, pack)

purple :: [Word8]
purple = [128, 0, 128, 64]

bitmapData :: ByteString
bitmapData = pack $ take 40000 (cycle purple)

ourPicture :: Picture
ourPicture = bitmapOfByteString 100 100 (BitmapFormat TopToBottom PxRGBA) bitmapData True

someFunc :: IO ()
someFunc = display (InWindow "Nice Window 2" (200, 200) (10, 10)) white ourPicture

someFunc2 :: IO ()
someFunc2 = display (InWindow "Nice Window 2" (200, 200) (10, 10)) white (Circle 80)
