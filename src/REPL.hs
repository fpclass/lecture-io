module REPL where

import System.IO

import Event

type Events = [(Int, Event)]

myEvents :: Events 
myEvents = [(1, Event 1 "test event" "not today" "hell, probably")]

repl :: IO ()
repl = withFile "events.json" ReadMode $ \h -> do  
    
    putStr "Please enter an event ID: "
    eventID <- read <$> getLine 

    case lookup eventID myEvents of 
        Nothing -> putStrLn "Event not found."
        Just e  -> print e

    pure ()