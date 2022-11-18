//
//  Parser.swift
//  
//
//  Created by Aaron Vranken on 28/06/2022.
//

import Foundation

public protocol Parser<Input, Output>: ParserConvertible {
    associatedtype Input
    associatedtype Output
    
    func parse(_ input: Input) throws -> (Output, Input)?
}

extension Parser {
    public var asParser: Self {
        self
    }
}
