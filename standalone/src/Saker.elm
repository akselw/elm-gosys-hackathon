module Saker exposing (..)

import Html exposing (Html, text, td, th, tr, table, thead, h2, input)
import Html.Attributes exposing (type_)
import Model exposing (..)


saker : List Sak -> Html Msg
saker sakList =
    table []
        (List.append
            [ thead []
                [ h2 [] [ text "Saker" ]
                ]
            , tr []
                [ th [] [ text "Velg" ]
                , th [] [ text "Endre til feilregistrert" ]
                , th [] [ text "Saksid" ]
                , th [] [ text "Fagsystem" ]
                , th [] [ text "Sakstype" ]
                , th [] [ text "Opprettet / Mottatt" ]
                , th [] [ text "Status på fagsak" ]
                , th [] [ text "Status endret" ]
                , th [] [ text "Ansvarlig enhet" ]
                , th [] [ text "Detaljer" ]
                ]
            ]
            (List.map sakRow sakList)
        )


sakRow : Sak -> Html Msg
sakRow sak =
    tr []
        [ td [] [ input [ type_ "checkbox" ] [] ]
        , td [] [ input [ type_ "checkbox" ] [] ]
        , td [] [ text sak.sakId ]
        , td [] [ text sak.fagsystem ]
        , td [] [ text sak.saktype ]
        , td [] [ text sak.opprettetMottatt ]
        , td [] [ text sak.statusFagsak ]
        , td [] [ text sak.statusEndret ]
        , td [] [ text sak.ansvarligEnhet ]
        , td [] [ text "en knapp" ]
        ]
