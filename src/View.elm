module View exposing (view)

import Browser exposing (Document)
import Html.Attributes exposing (class, href, style)
import Html exposing (Html, a, br, div, h1, li, p, text, ul)
import Html.Events exposing (onClick)

import Model exposing (Model, Msg(..))
import Route exposing (Route(..), routeToString)
import Van.BuildLog exposing (viewBuildLog)
import Van.Route exposing (Route(..))


view : Model -> Document Msg
view model =
  { title = "The Heretical Hobo"
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
    NotFound ->
      viewNotFoundPage
    VanRoute route ->
      case route of
        BuildLog ->
          viewBuildLog


viewHomePage : List (Html Msg)
viewHomePage =
  [ ul
    [ class "home-links" ]
    [ li
      [ class "home-link" ]
      [ a
        [ href (routeToString (VanRoute BuildLog)) ]
        [ text "Van Build Log" ]
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
      [ href (routeToString Home) ]
      [ text "Go back to Home" ]
    ]
  ]


viewPageHeader : Html Msg
viewPageHeader =
  div
    [ class "page-header" ]
    [ h1
      [ class "page-title" ]
      [ text "The Heretical Hobo" ]
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
        [ href "https://github.com/mtaylor91/hereticalhobo" ]
        [ text "View Source on GitHub" ]
      ]
    ]
