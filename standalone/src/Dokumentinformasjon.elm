module Dokumentinformasjon exposing (..)

import Html exposing (Html, text, td, th, tr, table, thead, h2)
import Model exposing (..)
import Dropdown exposing (..)


dokumentinformasjon : List Dokumentkategori -> Html msg
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
            , td [] [ text "ja / nei" ]
            , td [] [ dropdown dokumentkategoriList ]
            ]
        ]
