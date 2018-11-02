module Print3 where

myGreeting :: String
myGreeting = "hello" ++ " World!"

hello :: String
hello = "hello"

world :: String
world = "world!"

main :: IO ()
main = do
  putStrLn myGreeting
  putStrLn secondGreting
  where
    secondGreting = concat [hello, " ", world]
