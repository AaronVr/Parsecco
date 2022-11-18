//
//  Number.swift
//
//
//  Created by Aaron Vranken on 01/05/2022.
//

import Foundation

public let matchNaturalNumber = Parse {
    OneOrMore {
        matchArabicNumeral
    }
}

public let matchNegativeNumber = Parse {
    Character("-")
    matchNaturalNumber
}

public let matchInteger = OneOf {
    matchNaturalNumber
    matchNegativeNumber
}
