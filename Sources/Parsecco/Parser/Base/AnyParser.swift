//
//  AnyParser.swift
//  
//
//  Created by Aaron Vranken on 28/07/2022.
//

import Foundation

public struct AnyParser<Input, Output>: Parser {
    @usableFromInline internal let parseClosure: (Input) throws -> (Output, Input)?
    
    public init<P: Parser>(_ parser: P) where P.Input == Input, P.Output == Output {
        parseClosure = parser.parse
    }
    
    public func parse(_ input: Input) throws -> (Output, Input)? {
        try! parseClosure(input)
    }
}
