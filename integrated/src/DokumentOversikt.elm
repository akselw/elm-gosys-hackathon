module DokumentOversikt exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import IntegratedModel exposing (..)
import Model exposing (..)
import IntegratedMsg exposing (..)


dokumentOversikt : Model -> Html msg
dokumentOversikt model =
    table []
        ((journalpostOverskrift model.journalposter)
            :: (List.map journalpostLinje (spliceListOnPage model.journalposter model.tablePage))
        )


spliceListOnPage : List Journalpost -> Int -> List Journalpost
spliceListOnPage journalposter page =
    List.take ((page + 1) * 1) (List.drop (page * 1) journalposter)


currentPageAndTotalNumber : Model -> Html msg
currentPageAndTotalNumber model =
    div [] [ text ((Basics.toString (model.tablePage * 1)) ++ " til " ++ (Basics.toString ((model.tablePage + 1) * 1)) ++ " av " ++ (Basics.toString (List.length model.journalposter))) ]


nextAndPreviousButtons : Model -> Html IntegratedMsg.Msg
nextAndPreviousButtons model =
    div []
        [ (currentPageAndTotalNumber model)
        , button [ onClick Next ] [ text "Next" ]
        , button [ onClick Previous ] [ text "Previous" ]
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
        [ th []
            [ input [ type_ "checkbox" ] []
            ]
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
