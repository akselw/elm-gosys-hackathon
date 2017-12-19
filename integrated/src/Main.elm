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
    ( { journalposter = [ journalpost1, journalpost2 ] }, Cmd.none )


journalpost1 : Journalpost
journalpost1 =
    { journalposttype = "Utgående dokument"
    , enhet = "en annen enhet"
    , saksbehandler = "Kim, ErTeit"
    , journaldato = "12.23.2020"
    , registrertDato = "10.10.2010"
    , opprettetAv = "en annen"
    , tema = "Foreldrepenger"
    , status = "Journalført"
    , mottakskanal = "Skanning Nets"
    , beskrivelse = "Arbeidsgiver etterlyser mer penger"
    , journalpostId = "en annen id"
    , avsenderland = "Sverige"
    , batchnavn = "batchnavn"
    }


journalpost2 : Journalpost
journalpost2 =
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
