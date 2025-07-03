module Routes exposing (Route(..), routeToString, toRoute)

import Url exposing (Url)
import Url.Parser as Parser exposing (Parser, oneOf, map, s, top)


type Route
  = Home
  | BuildLog
  | NotFound


route :  Parser (Route -> a) a
route =
  oneOf
    [ map Home top
    , map BuildLog (s "build-log")
    ]


routeToString : Route -> String
routeToString str =
  case str of
    Home ->
      "/"
    BuildLog ->
      "/build-log"
    NotFound ->
      "/404"


toRoute : Url -> Route
toRoute url =
  case Parser.parse route url of
    Just r ->
      r
    Nothing ->
      NotFound
