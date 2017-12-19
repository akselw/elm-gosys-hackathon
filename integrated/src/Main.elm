module Main exposing (..)

import Html exposing (Html, text, div, h1, p, img)
import Html.Attributes exposing (src)
import Test exposing (test)
import Model exposing (Journalpost)
import Date exposing (fromTime)
import DokumentOversikt exposing (..)
import IntegratedModel exposing (..)


---- MODEL ----


init : ( Model, Cmd Msg )
init =
    ( { journalpost = journalpost }, Cmd.none )


journalpost : Journalpost
journalpost =
    { journalposttype = "Inngående dokument"
    , enhet = "en enhet"
    , saksbehandler = "Navnesen, Navn"
    , journaldato = "18.08.2017"
    , registrertDato = "17.08.2017"
    , opprettetAv = "noen"
    , tema = "Sykepenger"
    , status = "Journalført"
    , mottakskanal = "Skanning Nets"
    , beskrivelse = "Arbeidsgiver etterlyser refusjon"
    , journalpostId = "en Id"
    , avsenderland = "Norge"
    , batchnavn = "batchnavn"
    }



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    dokumentOversikt model



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
