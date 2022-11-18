//
//  Spot.swift
//  
//
//  Created by Aaron Vranken on 30/06/2022.
//

import Foundation

public struct Spot<Input: Collection>: Parser
where Input == Input.SubSequence {
    @usableFromInline let predicate: (Input.Element) throws -> Bool
    
    @inlinable public init(_ predicate: @escaping (Input.Element) throws -> Bool) {
        self.predicate = predicate
    }
    
    @inlinable public func parse(_ input: Input) throws -> (Input, Input)? {
        var remaining = input
        if let first = remaining.popFirst(), try predicate(first) {
            return (input[..<remaining.startIndex], remaining)
        }
        return nil
    }
}
