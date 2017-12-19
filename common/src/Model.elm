module Model exposing (..)


type alias Journalpost =
    { journalposttype : String
    , enhet : String
    , saksbehandler : String
    , journaldato : String
    , registrertDato : String
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
    , opprettetMottatt : String
    }


type alias Dokumentkategori =
    String


type Msg
    = NoOp
