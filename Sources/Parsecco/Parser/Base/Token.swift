//
//  Token.swift
//  
//
//  Created by Aaron Vranken on 28/06/2022.
//

import Foundation

public struct Token<Input>: Parser
where Input: Collection, Input.Element: Equatable, Input == Input.SubSequence {
    @usableFromInline let token: Input.Element
    
    @inlinable public init(_ token: Input.Element) {
        self.token = token
    }
    
    @inlinable public func parse(_ input: Input) -> (Input, Input)? {
        var remaining = input
        if let first = remaining.popFirst(), first == token {
            return (input[..<remaining.startIndex], remaining)
        }
        return nil
    }
}
