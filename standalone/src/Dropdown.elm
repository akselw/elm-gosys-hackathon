module Dropdown exposing (..)

import Html exposing (Html, select, option, text, div, button)
import Html.Attributes exposing (..)
import Html.Events exposing (on, onClick)
import Model exposing (..)
import Html.Events.Extra exposing (targetValueIntParse)
import Json.Decode as Json


makeOption : Dokumentkategori -> Html Msg
makeOption d =
    option [ value (toString d.kategoriId) ] [ text d.dekode ]


dropdown : List Dokumentkategori -> Html Msg
dropdown dokumentkategoriList =
    div []
        [ select [ on "change" (Json.map VelgDokumentkategori targetValueIntParse) ] (List.map makeOption dokumentkategoriList)
        , button [ onClick LeggTilDokumentkategori ] [ text "Legg til kategori" ]
        ]
