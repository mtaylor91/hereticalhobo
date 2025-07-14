module Route exposing (Route(..), routeToString, toRoute)

import Url exposing (Url)
import Url.Parser as Parser exposing (Parser, oneOf, map, s, top, (</>))

import Van.Route


type Route
  = Home
  | About
  | NotFound
  | VanRoute Van.Route.Route


route :  Parser (Route -> a) a
route =
  oneOf
    [ map Home top
    , map About (s "about" </> top)
    , map VanRoute (s "van" </> Van.Route.route)
    ]


routeToString : Route -> String
routeToString str =
  case str of
    Home ->
      "/"
    About ->
      "/about"
    NotFound ->
      "/404"
    VanRoute vanRoute ->
      "/van" ++ Van.Route.routeToString vanRoute


toRoute : Url -> Route
toRoute url =
  case Parser.parse route url of
    Just r ->
      r
    Nothing ->
      NotFound
