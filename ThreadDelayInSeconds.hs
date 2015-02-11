{-# OPTIONS_GHC -Wall #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TemplateHaskell     #-}
module ThreadDelayInSeconds
   ( threadDelayInSeconds
   ) where

import Control.Concurrent
import Data.Time.Units

us :: Second -> Int
us = fromIntegral . toMicroseconds

threadDelayInSeconds :: Int -> IO ()
threadDelayInSeconds = threadDelay . us . fromIntegral
