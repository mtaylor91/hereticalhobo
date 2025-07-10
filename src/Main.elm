module Main exposing (main)

import Browser
import Browser.Navigation as Navigation exposing (Key)
import Url exposing (Url)

import Route exposing (toRoute)
import View exposing (view)

import Model exposing (Model, Msg(..))
import View exposing (view)


type alias Flags = ()


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
          ( model, Navigation.pushUrl model.key (Url.toString url) )
        Browser.External externalUrl ->
          ( model, Navigation.load externalUrl )


onUrlChange : Url -> Msg
onUrlChange url =
  Navigate url


onUrlRequest : Browser.UrlRequest -> Msg
onUrlRequest urlRequest =
  LinkClicked urlRequest


subscriptions : Model -> Sub Msg
subscriptions _ =
  Sub.none
