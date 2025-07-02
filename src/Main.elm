module Main exposing (main)

import Browser
import Browser.Navigation exposing (Key)
import Html.Attributes exposing (class, href, style)
import Html exposing (Html, a, div, h1, text)
import Html.Events exposing (onClick)
import Url exposing (Url)


type alias Flags = ()


type alias Model =
  { key : Key }


type Msg
  = Noop
  | LinkClicked Browser.UrlRequest


main : Program () Model Msg
main =
  Browser.application
    { init = init
    , view = view
    , update = update
    , onUrlChange = onUrlChange
    , onUrlRequest = onUrlRequest
    , subscriptions = subscriptions
    }


init : Flags -> Url -> Key -> ( Model, Cmd Msg )
init _ _ key =
  ( { key = key }
  , Cmd.none
  )


view : Model -> Browser.Document Msg
view model =
  { title = "Man in a Van"
  , body = viewBody
  }


viewBody : List (Html Msg)
viewBody =
  [ div
    [ style "display" "flex"
    , style "flex-direction" "column"
    , style "width" "100dvw"
    , style "height" "100dvh"
    ]
    [ viewHero
    , viewFooter
    ]
  ]


viewHero : Html Msg
viewHero =
  div
    [ style "margin" "0"
    , style "padding" "0"
    , style "display" "flex"
    , style "flex-direction" "column"
    , style "justify-content" "flex-start"
    , style "align-items" "center"
    , style "text-align" "center"
    , style "flex-grow" "1"
    , class "hero-background"
    , style "background-repeat" "no-repeat"
    , style "background-size" "cover"
    ]
    [ viewPageHeader
    ]


viewPageHeader : Html Msg
viewPageHeader =
  div
    [ style "display" "flex"
    , style "width" "100%"
    , style "flex-direction" "column"
    , style "justify-content" "center"
    , style "align-items" "center"
    ]
    [ h1
      [ class "hero-title"
      , style "margin" "0"
      , style "padding" "0"
      , style "font-family" "Barrio, system-ui, sans-serif"
      , style "font-weight" "400"
      , style "font-style" "normal"
      ]
      [ text "Man in a Van" ]
    ]


viewFooter : Html Msg
viewFooter =
  div
    [ class "footer"
    , style "display" "flex"
    , style "flex-direction" "column"
    , style "justify-content" "center"
    , style "align-items" "center"
    ]
    [ text "Made with ❤️ in Elm"
    , a
      [ href "https://github.com/mtaylor91/maninavan-ca-site"
      , style "text-decoration" "underline"
      , style "color" "inherit"
      ]
      [ text "View Source on GitHub" ]
    ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    Noop ->
      ( model, Cmd.none )
    LinkClicked urlRequest ->
      case urlRequest of
        Browser.Internal url ->
          ( model, Browser.Navigation.pushUrl model.key (Url.toString url) )

        Browser.External externalUrl ->
          ( model, Browser.Navigation.load externalUrl )


onUrlChange : Url -> Msg
onUrlChange _ =
  Noop


onUrlRequest : Browser.UrlRequest -> Msg
onUrlRequest urlRequest =
  LinkClicked urlRequest


subscriptions : Model -> Sub Msg
subscriptions _ =
  Sub.none
