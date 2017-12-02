# Roman

Haskell library to convert to and from Roman numerals.

I did this primarily as a learning exercise, but if you find it useful, take it and use it in accordance with the glorious GPL version 3.

## Functions

### `fromRoman`

`fromRoman :: String -> Integer`

Converts a string in Roman numeral format into an Integer.

This function does not actually check for validity. I should probably add that at some point.

### `toRoman`

`toRoman :: Integer -> String`

Converts an Integer into a Roman numeral string.
