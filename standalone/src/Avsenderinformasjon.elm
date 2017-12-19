module Avsenderinformasjon exposing (..)

import Html exposing (Html, text, td, th, tr, table, thead, h2, input)
import Html.Attributes exposing (type_)
import Model exposing (..)


avsenderinformasjon : Maybe Bruker -> Html Msg
avsenderinformasjon bruker =
    table []
        [ thead []
            [ h2 [] [ text "Avsender" ]
            ]
        , tr []
            [ th [] [ text "Bruker er avsender" ]
            , th [] [ text "Søke: person / samhandler / arbeidsgiver" ]
            , th [] [ text "Navn" ]
            ]
        , tr []
            [ td [] [ input [ type_ "checkbox" ] [] ]
            , td [] [ text (getFodselsnummer bruker) ]
            , td [] [ text (getNavn bruker) ]
            ]
        ]


getFodselsnummer : Maybe Bruker -> String
getFodselsnummer brukerMaybe =
    case brukerMaybe of
        Just bruker ->
            bruker.fodselsnummer

        Nothing ->
            ""


getNavn : Maybe Bruker -> String
getNavn brukerMaybe =
    case brukerMaybe of
        Just bruker ->
            bruker.navn

        Nothing ->
            ""
