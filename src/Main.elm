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
  , body = viewContent
  }


viewContent : List (Html Msg)
viewContent =
  [ div
    [ class "container" ]
    [ viewHero
    , viewFooter
    ]
  ]


viewHero : Html Msg
viewHero =
  div
    [ class "hero" ]
    [ viewPageHeader ]


viewPageHeader : Html Msg
viewPageHeader =
  div
    [ class "page-header" ]
    [ h1
      [ class "hero-title" ]
      [ text "Man in a Van" ]
    ]


viewFooter : Html Msg
viewFooter =
  div
    [ class "footer" ]
    [ text "Made with ❤️ in Elm"
    , a
      [ href "https://github.com/mtaylor91/maninavan-ca-site" ]
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
