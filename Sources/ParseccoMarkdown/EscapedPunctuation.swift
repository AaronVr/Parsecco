//
//  EscapedPunctuation.swift
//  
//
//  Created by Aaron Vranken on 01/07/2022.
//

import Foundation
import Parsecco

@usableFromInline let backslash = Token<Substring>("\\")
@usableFromInline let ASCIIPunctuation = Spot<Substring> {
    let char = $0.utf8.first!
    return (0x21 <= char && char <= 0x2F) ||
           (0x3A <= char && char <= 0x40) ||
           (0x5B <= char && char <= 0x60) ||
           (0x7B <= char && char <= 0x7E)
}

public let escapedPunctuation = Parse {
    backslash
    Capture {
        ASCIIPunctuation
    }
} transform: {
    $1
}
