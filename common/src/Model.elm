module Model exposing (..)

import Date exposing (..)


type alias Journalpost =
    { journalposttype : String
    , enhet : String
    , saksbehandler : String
    , journaldato : Date
    , registrertDato : Date
    , opprettetAv : String
    , tema : String
    , status : String
    , mottakskanal : String
    , beskrivelse : String
    , journalpostId : String
    , avsenderland : String
    , batchnavn : String
    }


type alias Avsender =
    { fodselsNummer : String
    , navn : String
    }


type alias Sak =
    { sakId : String
    , fagsystem : String
    , saktype : String
    , opprettetMottatt : Date
    }
