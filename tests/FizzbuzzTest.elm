module FizzbuzzTest exposing (..)

import Expect
import Fizzbuzz exposing (fizzbuzz)
import Test exposing (..)


fizzbuzzTest : Test
fizzbuzzTest =
    describe "FizzBuzz Test"
        [ describe "Normal case"
            ([ ( 1, "1" )
             , ( 2, "2" )
             , ( 4, "4" )
             ]
                |> List.map
                    (\( input, expectedResult ) ->
                        test
                            ("should return "
                                ++ expectedResult
                                ++ " as string when given non-special number"
                            )
                        <|
                            \_ ->
                                input
                                    |> fizzbuzz
                                    |> Expect.equal expectedResult
                    )
            )
        , describe "Fizz case"
            ([ 3
             , 6
             , 9
             ]
                |> List.map
                    (\input ->
                        test
                            ("should return \"Fizz\" when given "
                                ++ String.fromInt input
                                ++ " which can divide by 3"
                            )
                        <|
                            \_ ->
                                input
                                    |> fizzbuzz
                                    |> Expect.equal "Fizz"
                    )
            )
        , describe "Buzz case"
            ([ 5
             , 10
             , 20
             ]
                |> List.map
                    (\input ->
                        test
                            ("should return \"Buzz\" when given "
                                ++ String.fromInt input
                                ++ " which can divide by 5"
                            )
                        <|
                            \_ ->
                                input
                                    |> fizzbuzz
                                    |> Expect.equal "Buzz"
                    )
            )
        , describe "FizzBuzz case"
            [ test "should return \"FizzBuzz\" when given number which can divide by 15" <|
                \_ ->
                    15
                        |> fizzbuzz
                        |> Expect.equal "FizzBuzz"
            ]
        ]
