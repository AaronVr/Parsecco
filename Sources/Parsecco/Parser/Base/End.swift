//
//  End.swift
//  
//
//  Created by Aaron Vranken on 30/06/2022.
//

import Foundation

public struct End<Input: Collection>: Parser {
    @inlinable public init() {}
    
    @inlinable public func parse(_ input: Input) -> (Void, Input)? {
        if input.isEmpty {
            return ((), input)
        }
        return nil
    }
}
