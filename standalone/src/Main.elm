module Main exposing (..)

import Html exposing (Html, text, div, h1, p, img)
import Model exposing (..)
import Journalpostinformasjon exposing (..)
import Dropdown exposing (..)
import Dokumentinformasjon exposing (..)


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


dokumentkategoriList : List Dokumentkategori
dokumentkategoriList =
    [ "en Kategori", "en Kategori til" ]



---- UPDATE ----


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ journalpostinformasjon journalpost
        , dokumentinformasjon dokumentkategoriList
        ]



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
