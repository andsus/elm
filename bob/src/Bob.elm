module Bob exposing (hey)

hey : String -> String
hey input =
    let utterance = String.trim input in
    if silent utterance then
      "Fine. Be that way!"
    else if  forcefulQuestion utterance then
      "Calm down, I know what I'm doing!"
    else if question utterance then
      "Sure."
    else if forceful utterance then
      "Whoa, chill out!"   
    else 
      "Whatever."

silent = String.isEmpty

question = String.endsWith "?"

forceful : String -> Bool
forceful utterance =
    utterance == String.toUpper utterance && utterance /= String.toLower utterance

forcefulQuestion : String -> Bool
forcefulQuestion utterance = question utterance && forceful utterance