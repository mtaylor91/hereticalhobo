module Helpers exposing (viewPhoto)

import Html exposing (Html, div, img, text)
import Html.Attributes exposing (alt, class, src)


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
