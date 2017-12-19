module TableView exposing (..)

import Html exposing (Html, text, td, th, tr, table)
import Html.Attributes exposing (colspan)
import Model exposing (..)


tableview : Journalpost -> Html msg
tableview journalpost =
    table []
        [ tr []
            [ th [] [ text "Journalposttype" ]
            , td [] [ text journalpost.journalposttype ]
            , th [] [ text "Journalførende enhet" ]
            , td [] [ text journalpost.enhet ]
            , th [] [ text "Journalførende saksbehandler" ]
            , td [] [ text journalpost.saksbehandler ]
            ]
        , tr []
            [ th [] [ text "Journaldato" ]
            , td [] [ text journalpost.journaldato ]
            , th [] [ text "Registrert dato" ]
            , td [] [ text journalpost.registrertDato ]
            , th [] [ text "Journalpost opprettet av" ]
            , td [] [ text journalpost.opprettetAv ]
            ]
        , tr []
            [ th [] [ text "Tema" ]
            , td [] [ text journalpost.tema ]
            , th [] [ text "Journalstatus" ]
            , td [] [ text journalpost.status ]
            , th [] [ text "mottakskanal" ]
            , td [] [ text journalpost.mottakskanal ]
            ]
        , tr []
            [ th [] [ text "Journalpostbeskrivelse" ]
            , td [] [ text journalpost.beskrivelse ]
            , th [] [ text "JournalpostID" ]
            , td [] [ text journalpost.journalpostId ]
            , th [] [ text "Avsenderland" ]
            , td [] [ text journalpost.avsenderland ]
            ]
        , tr []
            [ td [ colspan 4 ] []
            , th [] [ text "Batchnavn" ]
            , td [] [ text journalpost.batchnavn ]
            ]
        ]
