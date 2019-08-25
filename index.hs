#!/usr/bin/env stack
-- stack --resolver lts-12.21 script{-
import Control.Concurrent.STM
import Control.Monad (replicateM_)

makeCounter :: IO (IO Int)
makeCounter = do
  var <- newTVarIO 1
  return $atomically $ do
    x <- readTVar var
    writeTVar var (x + 1)
    return x

main :: IO ()
main = do
  counter <- makeCounter
  replicateM_ 10 $ counter >>= print
