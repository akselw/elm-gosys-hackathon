module Dropdown exposing (..)

import Html exposing (Html, select, option, text)
import Html.Attributes exposing (..)
import Html.Events exposing (on)
import Model exposing (..)
import Html.Events.Extra exposing (targetValueIntParse)
import Json.Decode as Json


makeOption : Dokumentkategori -> Html Msg
makeOption d =
    option [ value (toString d.kategoriId) ] [ text d.dekode ]


dropdown : List Dokumentkategori -> Html Msg
dropdown dokumentkategoriList =
    select [ on "change" (Json.map VelgDokumentkategori targetValueIntParse) ] (List.map makeOption dokumentkategoriList)
