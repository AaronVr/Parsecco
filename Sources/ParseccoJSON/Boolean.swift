//
//  Boolean.swift
//  
//
//  Created by Aaron Vranken on 03/07/2022.
//

import Foundation
import Parsecco

let jsonStringParser = OneOf {
    Between { Character("\"") } and: { Character("\"") }
    Between { Character("\'") } and: { Character("\'") }
}.transform {
    JsonValue.string(value: String($0))
}

let jsonNumberParser = matchInteger.transform { JsonValue.number(value: Double($0)! ) }

let jsonBooleanParser = OneOf {
    Match("true").transform { _ in JsonValue.boolean(value: true) }
    Match("false").transform { _ in JsonValue.boolean(value: false) }
}

let jsonNullParser = Match("null").transform { _ in JsonValue.null }

var jsonValueParser: (any Parser<Substring, JsonValue>)? = nil

//@usableFromInline
let jsonArrayParser = Parse {
    Character("[")
    Capture {
        ZeroOrMore {
            Lazy { AnyParser(jsonValueParser!) }
            Character(",")
        }
    }
    Capture {
        Lazy { AnyParser(jsonValueParser!) }
    }
    Character("]")
}
    .transform { _, values, value in JsonValue.null }

func initialise() {
    jsonValueParser = OneOf {
        jsonArrayParser
        jsonNullParser
        jsonBooleanParser
        jsonNumberParser
        jsonStringParser
    }
}
