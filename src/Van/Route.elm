module Van.Route exposing (Route(..), route, routeToString)

import Url exposing (Url)
import Url.Parser as Parser exposing (Parser, oneOf, map, s, top)


type Route
  = BuildLog


route : Parser (Route -> a) a
route =
    oneOf
        [ map BuildLog (s "build-log")
        ]


routeToString : Route -> String
routeToString str =
    case str of
        BuildLog ->
            "/build-log"
