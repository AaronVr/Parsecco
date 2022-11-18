//
//  Match.swift
//  
//
//  Created by Aaron Vranken on 28/06/2022.
//

import Foundation

public struct Match<Input>: Parser
where Input: Collection, Input: Equatable, Input.Element: Equatable, Input == Input.SubSequence {
    @usableFromInline let matcher: Input
    
    @inlinable public init(_ matcher: Input) {
        self.matcher = matcher
    }
    
    @inlinable public init<I>(_ matcher: I)
    where I: Collection, Input == I.SubSequence {
        self.matcher = matcher[...]
    }
    
    @inlinable public func parse(_ input: Input) -> (Input, Input)? {
        let matchee = input.prefix(matcher.count)
        if matchee == matcher {
            return (matchee, input[matchee.endIndex...])
        }
        return nil
    }
}
