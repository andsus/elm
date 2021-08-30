module Leap exposing (isLeapYear)


isLeapYear : Int -> Bool
isLeapYear year =
    let
        isDivBy n = (year |> modBy n) == 0
    in
        (isDivBy 400) || (isDivBy 4) && not (isDivBy 100)
    
