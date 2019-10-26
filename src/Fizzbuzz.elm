module Fizzbuzz exposing (fizzbuzz)


fizzbuzz : Int -> String
fizzbuzz number =
    case ( number |> modBy 3, number |> modBy 5 ) of
        ( 0, 0 ) ->
            "FizzBuzz"

        ( 0, _ ) ->
            "Fizz"

        ( _, 0 ) ->
            "Buzz"

        ( _, _ ) ->
            String.fromInt number
