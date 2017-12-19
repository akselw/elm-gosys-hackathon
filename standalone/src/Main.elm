module Main exposing (..)

import Html exposing (Html, text, div, h1, p, img)
import Html.Attributes exposing (src)
import Test exposing (test)
import Model exposing (..)
import TableView exposing (..)
import Date exposing (fromTime)


---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )


journalpost : Journalpost
journalpost =
    { journalposttype = "Inngående dokument"
    , enhet = "en enhet"
    , saksbehandler = "Navnesen, Navn"
    , journaldato = Date.fromTime 0
    , registrertDato = Date.fromTime 0
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


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    tableview journalpost



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
