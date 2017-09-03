import System.Process

main = do
  (_, _, _, pr) <- createProcess $ shell "git status"
  _ <- waitForProcess pr
  return ()
