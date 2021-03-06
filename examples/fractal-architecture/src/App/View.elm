module App.View exposing (..)

import Html.App
import Html exposing (text, div, Html)
import App.Model exposing (Model)
import App.Messages exposing (..)
import Components.Counter.View


view : Model -> Html Msg
view model =
    div []
        [ text "Try pressing up & down arrow keys on keyboard"
        , Html.App.map CounterMsg (Components.Counter.View.view model.counter)
        ]
