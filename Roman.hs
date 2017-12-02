module Roman where

import Data.Maybe
import Data.Map (Map)
import qualified Data.Map as Map

-- Functions for fromRoman

romanLookup = Map.fromList [('M', 1000), ('D', 500), ('C', 100), ('L', 50), ('X', 10), ('V', 5), ('I', 1)]

getRomanValue :: Char -> Int
getRomanValue x = fromJust (Map.lookup x romanLookup)

fromRoman :: String -> Int
fromRoman [] = 0
fromRoman [x] = getRomanValue x
fromRoman (x:y:xs) = if getRomanValue x < getRomanValue y then 0 - getRomanValue x + fromRoman (y:xs) else getRomanValue x + fromRoman (y:xs)

-- Functions for toRoman

intLookup = [("M", 1000), ("CM", 900), ("D", 500), ("CD", 400), ("C", 100), ("XC", 90), ("L", 50), ("XL", 40), ("X", 10), ("IX", 9), ("V", 5), ("IV", 4), ("I", 1)]

valid :: Integer -> (String, Integer) -> Bool
valid x pair = snd pair <= x

getHighest :: Integer -> (String, Integer)
getHighest x = head (filter (valid x) intLookup)

toRoman :: Integer -> String
toRoman 0 = []
toRoman x = fst (getHighest x) ++ toRoman (x - snd (getHighest x))
