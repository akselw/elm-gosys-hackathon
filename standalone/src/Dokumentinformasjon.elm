module Dokumentinformasjon exposing (..)

import Html exposing (Html, text, td, th, tr, table)
import Model exposing (..)
import Dropdown exposing (..)


dokumentinformasjon : List Dokumentkategori -> Html msg
dokumentinformasjon dokumentkategoriList =
    table []
        [ tr []
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
