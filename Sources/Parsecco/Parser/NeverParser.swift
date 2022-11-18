//
//  NeverParser.swift
//  
//
//  Created by Aaron Vranken on 28/06/2022.
//

import Foundation

public struct NeverParser<Input>: Parser {
    private init(_ input: Input.Type) {}
    
    @inlinable public func parse(_ input: Input) throws -> (Never, Input)? {
        fatalError("A NeverParser cannot be executed.")
    }
}
