//
//  CharacterParserConvertible.swift
//  
//
//  Created by Aaron Vranken on 02/07/2022.
//

import Foundation

extension Character: ParserConvertible {
    @inlinable public var asParser: Token<Substring> {
        Token<Substring>(self)
    }
}

extension String: ParserConvertible {
    @inlinable public var asParser: Match<Substring> {
        Match<Substring>(self)
    }
}
