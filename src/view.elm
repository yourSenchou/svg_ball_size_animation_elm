module View exposing (view)

import Html exposing (Html, div)
import Html.Attributes
import Html.Events exposing (onClick)
import Svg exposing (..)
import Svg.Attributes exposing (..)
import Model exposing (Model)
import Msg exposing (..)
import Animation


view : Model -> Html Msg
view model =
    div []
        [ Html.h1 [ fontSize "36px" ] [ Html.text "Click the circle" ]
        , svg [ viewBox "-2 -2 6 6" ]
            [ circle
                (Animation.render model.style
                    ++ [ onClick Resize
                       , Html.Attributes.style
                            [ ( "fill", "#f88" )
                            , ( "stroke", "black" )
                            , ( "strokeWidth", "0.01" )
                            ]
                       ]
                )
                []
            ]
        ]
