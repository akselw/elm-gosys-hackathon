module Dokumentinformasjon exposing (..)

import Html exposing (Html, text, td, th, tr, table, thead, h2, input)
import Html.Attributes exposing (type_)
import Model exposing (..)
import Dropdown exposing (..)


dokumentinformasjon : List Dokumentkategori -> Html Msg
dokumentinformasjon dokumentkategoriList =
    table []
        [ thead []
            [ h2 [] [ text "Dokumentinformasjon" ]
            ]
        , tr []
            [ th [] [ text "Dok.info" ]
            , th [] [ text "Sensitive personopplysninger" ]
            , th [] [ text "Hoveddokument/beskrivelse" ]
            , th [] [ text "Fullversjon" ]
            , th [] [ text "Vedlegg i separat fil" ]
            , th [] [ text "Dokumentstatus" ]
            ]
        , tr []
            [ td [] [ text "en knapp" ]
            , td [] [ input [ type_ "checkbox" ] [] ]
            , td [] [ dropdown dokumentkategoriList ]
            ]
        ]
