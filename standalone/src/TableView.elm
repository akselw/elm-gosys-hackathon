module TableView exposing (..)

import Html exposing (Html, text, td, tr, table)
import Html.Attributes exposing (colspan)
import Model exposing (..)


tableview : Journalpost -> Html msg
tableview journalpost =
    table []
        [ tr []
            [ td [] [ text "Journalposttype" ]
            , td [] [ text journalpost.journalposttype ]
            , td [] [ text "Journalførende enhet" ]
            , td [] [ text journalpost.enhet ]
            , td [] [ text "Journalførende saksbehandler" ]
            , td [] [ text journalpost.saksbehandler ]
            ]
        , tr []
            [ td [] [ text "Journaldato" ]
            , td [] [ text journalpost.journaldato ]
            , td [] [ text "Registrert dato" ]
            , td [] [ text journalpost.registrertDato ]
            , td [] [ text "Journalpost opprettet av" ]
            , td [] [ text journalpost.opprettetAv ]
            ]
        , tr []
            [ td [] [ text "Tema" ]
            , td [] [ text journalpost.tema ]
            , td [] [ text "Journalstatus" ]
            , td [] [ text journalpost.status ]
            , td [] [ text "mottakskanal" ]
            , td [] [ text journalpost.mottakskanal ]
            ]
        , tr []
            [ td [] [ text "Journalpostbeskrivelse" ]
            , td [] [ text journalpost.beskrivelse ]
            , td [] [ text "JournalpostID" ]
            , td [] [ text journalpost.journalpostId ]
            , td [] [ text "Avsenderland" ]
            , td [] [ text journalpost.avsenderland ]
            ]
        , tr []
            [ td [ colspan 4 ] []
            , td [] [ text "Batchnavn" ]
            , td [] [ text journalpost.batchnavn ]
            ]
        ]
