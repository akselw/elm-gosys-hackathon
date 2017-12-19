module Main exposing (..)

import Html exposing (Html, text, div, h1, p, img)
import Model exposing (Journalpost)
import DokumentOversikt exposing (..)
import IntegratedModel exposing (..)
import IntegratedMsg exposing (..)


---- MODEL ----


init : ( Model, Cmd Msg )
init =
    ( { journalposter = [ journalpost1, journalpost2 ], tablePage = 1 }, Cmd.none )


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
    , kategorier = []
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
    , kategorier = []
    }



---- UPDATE ----


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Next ->
            ( decrementPageIfNotZero model
            , Cmd.none
            )

        Previous ->
            ( incrementPage model, Cmd.none )

        NoOp ->
            ( model, Cmd.none )


decrementPageIfNotZero : Model -> Model
decrementPageIfNotZero model =
    if model.tablePage == 0 then
        { model | tablePage = 0 }
    else
        { model | tablePage = model.tablePage - 1 }


incrementPage : Model -> Model
incrementPage model =
    { model | tablePage = model.tablePage + 1 }



---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ nextAndPreviousButtons model
        , dokumentOversikt model
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
