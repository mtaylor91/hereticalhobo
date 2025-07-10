module Model exposing (Model, Msg(..))

import Browser exposing (UrlRequest)
import Browser.Navigation exposing (Key)
import Url exposing (Url)

import Route exposing (Route(..))


type alias Model =
  { key : Key
  , route : Route
  }


type Msg
  = Noop
  | Navigate Url
  | LinkClicked UrlRequest
