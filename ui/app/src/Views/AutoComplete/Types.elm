module Views.AutoComplete.Types exposing (Model, Msg(..), initAutoComplete)

import Set exposing (Set)


type alias Model =
    { list : Set String
    , fieldText : String
    , fields : List String
    , matches : List String
    , backspacePressed : Bool
    , focused : Bool
    , resultsHovered : Bool
    , maybeSelectedMatch : Maybe String
    }


type Msg
    = AddField Bool String
    | DeleteField Bool String
    | Select (Maybe String)
    | PressingBackspace Bool
    | Focus Bool
    | ResultsHovered Bool
    | UpdateFieldText String
    | Noop


initAutoComplete : Model
initAutoComplete =
    { list = Set.empty
    , fieldText = ""
    , fields = []
    , matches = []
    , focused = False
    , resultsHovered = False
    , backspacePressed = False
    , maybeSelectedMatch = Nothing
    }
