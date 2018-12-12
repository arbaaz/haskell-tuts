#!/usr/bin/env stack
import Control.Concurrent.STM
import Control.Monad (replicateM_)

makeCounter :: IO (IO Int)
makeCounter = do
  var <- newTVarIO 1
  return undefined

main :: IO ()
main = do
  counter <- makeCounter
  replicateM_ 10 $ counter >>= print
