{-# OPTIONS_GHC -Wall #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TemplateHaskell     #-}
module ThreadDelayInSeconds
   ( threadDelayInSeconds
   , threadDelayInMilliseconds
   ) where

import Control.Concurrent
import Data.Time.Units

us :: Second -> Int
us = fromIntegral . toMicroseconds

threadDelayInSeconds :: Int -> IO ()
threadDelayInSeconds = threadDelay . us . fromIntegral

ms :: Millisecond -> Int
ms = fromIntegral . toMicroseconds

threadDelayInMilliseconds :: Int -> IO ()
threadDelayInMilliseconds = threadDelay . ms . fromIntegral
