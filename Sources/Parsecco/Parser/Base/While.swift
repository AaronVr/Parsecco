//
//  While.swift
//  
//
//  Created by Aaron Vranken on 01/07/2022.
//

import Foundation

public struct While<Input: Collection>: Parser
where Input == Input.SubSequence {
    @usableFromInline let predicate: (Input.Element) throws -> Bool
    
    @inlinable public init(_ predicate: @escaping (Input.Element) throws -> Bool) {
        self.predicate = predicate
    }
    
    @inlinable public func parse(_ input: Input) throws -> (Input, Input)? {
        let result = try input.prefix(while: predicate)
        
        return (result, input[result.endIndex...])
    }
}
