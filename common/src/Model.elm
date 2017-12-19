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
    , kategorier : List Dokumentkategori
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
    , statusFagsak : String
    , statusEndret : String
    , ansvarligEnhet : String
    , detaljer : String
    }


type alias Dokumentkategori =
    { kategoriId : Int
    , dekode : String
    }


type alias Bruker =
    { fodselsnummer : String
    , navn : String
    }


type Msg
    = VelgDokumentkategori Int
    | LeggTilDokumentkategori
