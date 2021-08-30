module TwoFer exposing (twoFer)


twoFer : Maybe String -> String
twoFer maybeName =
    let
        name = Maybe.withDefault "you" maybeName
    in
        "One for " ++ name ++ ", one for me."
