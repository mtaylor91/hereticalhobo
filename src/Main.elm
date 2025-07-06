module Main exposing (main)

import Browser
import Browser.Navigation exposing (Key)
import Html.Attributes exposing (class, href, style)
import Html exposing (Html, a, br, div, h1, li, p, text, ul)
import Html.Events exposing (onClick)
import Url exposing (Url)

import BuildLog exposing (viewBuildLog)
import Routes exposing (Route(..), toRoute)


type alias Flags = ()


type alias Model =
  { key : Key
  , route : Route
  }


type Msg
  = Noop
  | Navigate Url
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
init _ url key =
  ( { key = key
    , route = toRoute url
    }
  , Cmd.none
  )


view : Model -> Browser.Document Msg
view model =
  { title = "Man in a Van"
  , body = viewContainer model
  }


viewContainer : Model -> List (Html Msg)
viewContainer model =
  [ div
    [ class "container" ]
    [ viewContent model
    , viewFooter
    ]
  ]


viewContent : Model -> Html Msg
viewContent model =
  div
    [ class "content" ]
    ( [ viewPageHeader ] ++ viewMainContent model )


viewMainContent : Model -> List (Html Msg)
viewMainContent model =
  [ div
    [ class "main-content" ]
    (viewMainPage model)
  ]


viewMainPage : Model -> List (Html Msg)
viewMainPage model =
  case model.route of
    Home ->
      viewHomePage
    BuildLog ->
      BuildLog.viewBuildLog
    NotFound ->
      viewNotFoundPage


viewHomePage : List (Html Msg)
viewHomePage =
  [ ul
    [ class "home-links" ]
    [ li
      [ class "home-link" ]
      [ a
        [ href "/build-log" ]
        [ text "Build Log" ]
      ]
    ]
  , div
    [ class "signature" ]
    [ text "Always be Curious, Creative, and Kind;"
    , br [] []
    , text "Never Cowardly or Cruel"
    ]
  ]


viewNotFoundPage : List (Html Msg)
viewNotFoundPage =
  [ div
    [ class "section" ]
    [ h1 [ class "error-title" ] [ text "404 Not Found" ]
    , p [ class "error-message" ] [ text "The page you are looking for does not exist." ]
    , a
      [ href "/" ]
      [ text "Go back to Home" ]
    ]
  ]


viewPageHeader : Html Msg
viewPageHeader =
  div
    [ class "page-header" ]
    [ h1
      [ class "page-title" ]
      [ text "Man in a Van" ]
    ]


viewFooter : Html Msg
viewFooter =
  div
    [ class "footer" ]
    [ div
      [ class "source" ]
      [ text "Made with ❤️ in Elm"
      , br [] []
      , a
        [ href "https://github.com/mtaylor91/maninavan-ca-site" ]
        [ text "View Source on GitHub" ]
      ]
    ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    Noop ->
      ( model, Cmd.none )
    Navigate url ->
      ( { model | route = toRoute url }
      , Cmd.none
      )
    LinkClicked urlRequest ->
      case urlRequest of
        Browser.Internal url ->
          ( model, Browser.Navigation.pushUrl model.key (Url.toString url) )
        Browser.External externalUrl ->
          ( model, Browser.Navigation.load externalUrl )


onUrlChange : Url -> Msg
onUrlChange url =
  Navigate url


onUrlRequest : Browser.UrlRequest -> Msg
onUrlRequest urlRequest =
  LinkClicked urlRequest


subscriptions : Model -> Sub Msg
subscriptions _ =
  Sub.none
