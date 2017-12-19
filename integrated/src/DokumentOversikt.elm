module DokumentOversikt exposing (..)

import Html exposing (..)
import Html.Attributes exposing (colspan)
import IntegratedModel exposing (..)
import Model exposing (..)


dokumentOversikt : Model -> Html msg
dokumentOversikt model =
    table []
        [ (journalpostOverskrift model.journalpost)
        , (journalpostLinje model.journalpost)
        ]


journalpostOverskrift : a -> Html msg
journalpostOverskrift journalpost =
    tr []
        [ th [] [ text "Checkbox" ]
        , th [] [ text "J.Post" ]
        , th [] [ text "Dok" ]
        , th [] [ text "Dok" ]
        , th [] [ text "Reg/Sendt" ]
        , th [] [ text "Saksid" ]
        , th [] [ text "Tema" ]
        , th [] [ text "Avsender" ]
        , th [] [ text "Hoveddokument" ]
        , th [] [ text "Vedlegg" ]
        , th [] [ text "Status" ]
        ]


journalpostLinje : Journalpost -> Html msg
journalpostLinje journalpost =
    tr []
        [ th [] [ text "x" ]
        , th [] [ text "LinkKnapp" ]
        , th [] [ text "DokLink" ]
        , th [] [ text (journalpost.journalposttype ++ "Skal konverteres") ]
        , th [] [ text journalpost.journaldato ]
        , th [] [ text "saksidnummer" ]
        , th [] [ text journalpost.tema ]
        , th [] [ text journalpost.avsenderland ]
        , th [] [ text journalpost.beskrivelse ]
        , th [] [ text "   " ]
        , th [] [ text journalpost.status ]
        ]