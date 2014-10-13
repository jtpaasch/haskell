-- For pausing a thread.
import Control.Concurrent (threadDelay)

-- For repeating an action repeatedly.
import Control.Monad (forever)


-- | 'main' runs the main program
main :: IO ()
main = do

    -- Repeatedly do something.
    repeatedly $ do
        pause 2
        sayHi

-- | Pause a specified number of seconds.
pause :: Int -> IO ()
pause seconds = do
   let microseconds = seconds * 1000 * 1000
   threadDelay microseconds

-- | The 'forever' function performs an action repeatedly,
-- so let's just call it that to make it easier to understand.
repeatedly = forever

-- | Just say hey.
sayHi = putStrLn "Hey"


