module Helpers exposing (..)

import Html exposing (Html, a, div, h1, h2, img, p, text)
import Html.Attributes exposing (alt, class, href, src)


viewHomeLink : Html msg
viewHomeLink =
  div
    [ class "home-link" ]
    [ a [ href "/" ] [ text "Back to Home" ] ]


viewMainContentTitle : String -> Html msg
viewMainContentTitle title =
  h1 [ class "main-content-title" ] [ text title ]


viewParagraph : String -> Html msg
viewParagraph paragraphText =
  p [] [ text paragraphText ]


viewPhoto : String -> String -> Html msg
viewPhoto url caption =
  div
    [ class "photo" ]
    [ img
      [ src url
      , alt caption
      ]
      [ text caption ]
    , div
      [ class "caption" ]
      [ text caption ]
    ]


viewSection : String -> List (Html msg) -> Html msg
viewSection title elements =
  div
    [ class "section" ]
    ( [ h2 [] [ text title ] ] ++ elements )
