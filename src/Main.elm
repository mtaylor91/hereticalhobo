module Main exposing (main)

import Browser
import Html.Attributes exposing (style)
import Html exposing (Html, button, div, h1, text)
import Html.Events exposing (onClick)


type alias Flags = ()


type alias Model = {}


type Msg = Noop


main : Program () Model Msg
main =
  Browser.document
    { init = init
    , update = update
    , subscriptions = subscriptions
    , view = view
    }


init : Flags -> ( Model, Cmd Msg )
init _ =
  ( {}, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    Noop ->
      ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions _ =
  Sub.none


view : Model -> Browser.Document Msg
view model =
  { title = "Man in a Van"
  , body =
    [ div
      [ style "background-image" "url('/static/background.jpg')"
      , style "background-repeat" "no-repeat"
      , style "background-size" "cover"
      , style "background-position" "right"
      , style "display" "flex"
      , style "flex-direction" "column"
      , style "justify-content" "flex-start"
      , style "align-items" "center"
      , style "width" "100vw"
      , style "height" "100vh"
      , style "padding" "0"
      , style "margin" "0"
      , style "text-align" "center"
      ]
      [ div
        [ style "display" "flex"
        , style "width" "100%"
        , style "flex-direction" "column"
        , style "justify-content" "center"
        , style "align-items" "center"
        ]
        [ h1
          [ style "margin" "0"
          , style "padding-top" "3em"
          , style "font-family" "Barrio, system-ui, sans-serif"
          , style "font-weight" "400"
          , style "font-style" "normal"
          , style "font-size" "4em"
          ]
          [ text "Man in a Van" ]
        ]
      ]
    ]
  }
