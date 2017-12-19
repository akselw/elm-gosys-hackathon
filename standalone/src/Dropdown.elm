module Dropdown exposing (..)

import Html exposing (Html, select, option, text)
import Html.Attributes exposing (..)
import Model exposing (..)


dropdown : List Dokumentkategori -> Html msg
dropdown dokumentkategoriList =
    select [ id "InsuranceProviderId" ]
        [ option [ value "1" ] [ text "Carrier 1" ]
        , option [ value "2" ] [ text "Carrier 2" ]
        , option [ value "3" ] [ text "Carrier 3" ]
        , option [ value "4" ] [ text "Carrier 4" ]
        ]
