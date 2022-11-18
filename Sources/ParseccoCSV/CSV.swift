//
//  CSV.swift
//  
//
//  Created by Aaron Vranken on 01/07/2022.
//

import Foundation
import Parsecco

let plainField = While<Substring> { $0 != "," && $0 != "\n" }

let quotedField = Parse {
    Character("\"")
    Capture {
        While<Substring> { $0 != "\"" }
    }
    Character("\"")
}.transform { $1 }

let field = OneOf {
    quotedField
    plainField
}

let line = OneOrMore {
    field
} separator: {
    Character(",")
}

public let csv = ZeroOrMore {
    line
} separator: {
    Character("\n")
} until: {
    End<Substring>()
}

