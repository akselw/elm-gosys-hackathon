module Main exposing (..)

import Html exposing (Html, text, div, h1, a)
import Html.Attributes exposing (href)
import Model exposing (..)
import Journalpostinformasjon exposing (..)
import Dokumentinformasjon exposing (..)
import Avsenderinformasjon exposing (..)
import Saker exposing (..)
import Maybe exposing (..)
import List.Extra exposing (find)


---- MODEL ----


type alias Model =
    { journalpost : Journalpost
    , dokumentkategoriList : List Dokumentkategori
    , valgtDokumentkategori : Maybe Dokumentkategori
    , avsenderinformasjon : Maybe Bruker
    , saker : List Sak
    }


init : ( Model, Cmd Msg )
init =
    ( { journalpost =
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
      , dokumentkategoriList =
            [ { kategoriId = 1, dekode = "en Kategori" }
            , { kategoriId = 2, dekode = "en Kategori til" }
            ]
      , valgtDokumentkategori = Nothing
      , avsenderinformasjon =
            Just
                { fodselsnummer = "0000000000"
                , navn = "Navn Navnesen"
                }
      , saker =
            [ { sakId = "1"
              , fagsystem = "et fagsystem"
              , saktype = "en type"
              , opprettetMottatt = "2017.12.12"
              , statusFagsak = "all good"
              , statusEndret = "endret"
              , ansvarligEnhet = "0023"
              , detaljer = "en knapp"
              }
            , { sakId = "2"
              , fagsystem = "et annet fagsystem"
              , saktype = "en annen type"
              , opprettetMottatt = "2017.10.8"
              , statusFagsak = "all good"
              , statusEndret = "endret"
              , ansvarligEnhet = "0023"
              , detaljer = "en knapp"
              }
            ]
      }
    , Cmd.none
    )



---- UPDATE ----


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        VelgDokumentkategori kategoriId ->
            ( velgDokumentkategori kategoriId model, Cmd.none )

        LeggTilDokumentkategori ->
            ( leggTilDokumentkategori model, Cmd.none )


velgDokumentkategori : Int -> Model -> Model
velgDokumentkategori kategoriId model =
    { model
        | valgtDokumentkategori =
            find
                (\d -> d.kategoriId == kategoriId)
                model.dokumentkategoriList
    }


leggTilDokumentkategori : Model -> Model
leggTilDokumentkategori model =
    case model.valgtDokumentkategori of
        Just dokumentkategori ->
            { model
                | journalpost = leggTilDokumentkategoriIModel dokumentkategori model.journalpost
            }

        Nothing ->
            model


leggTilDokumentkategoriIModel : Dokumentkategori -> Journalpost -> Journalpost
leggTilDokumentkategoriIModel dokumentkategori journalpost =
    { journalpost | kategorier = dokumentkategori :: journalpost.kategorier }



---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text "Journalpost" ]
        , a [ href "/integrated" ] [ text "Tilbake" ]
        , journalpostinformasjon model.journalpost
        , dokumentinformasjon model.dokumentkategoriList
        , avsenderinformasjon model.avsenderinformasjon
        , saker model.saker
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
