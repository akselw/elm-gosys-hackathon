module TableView exposing (..)

import Html exposing (Html, text, td, tr, table)
import Model exposing (..)


tableview : Journalpost -> Html Msg
tableview journalpost =
    table []
        [ tr []
            [ td [] [ text "journalposttype" ]
            , td [] [ text journalpost.journalposttype ]
            ]
        ]
