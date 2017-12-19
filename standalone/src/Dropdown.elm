module Dropdown exposing (..)

import Html exposing (Html, select, option, text)
import Html.Attributes exposing (..)
import Model exposing (..)


makeOption : Dokumentkategori -> Html msg
makeOption d =
    option [] [ text d ]


dropdown : List Dokumentkategori -> Html msg
dropdown dokumentkategoriList =
    select [] (List.map makeOption dokumentkategoriList)
