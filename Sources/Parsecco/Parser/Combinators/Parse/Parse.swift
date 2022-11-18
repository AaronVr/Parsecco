//
//  Parse.swift
//  
//
//  Created by Aaron Vranken on 28/06/2022.
//

import Foundation

public struct Parse<ParseTuple: Parser, TransformedOutput>: Parser {
    @usableFromInline let tuple: ParseTuple
    @usableFromInline let transform: (ParseTuple.Output) throws -> TransformedOutput
    
    @inlinable public init(@ParseBuilder tuple: () -> ParseTuple)
    where TransformedOutput == ParseTuple.Output {
        self.tuple = tuple()
        self.transform = { $0 }
    }
    
    @inlinable public func parse(_ input: ParseTuple.Input) throws -> (TransformedOutput, ParseTuple.Input)? {
        return try tuple.parse(input).map { (try transform($0), $1) }
    }
}

extension Parse {
    @inlinable public init(@ParseBuilder tuple: () -> ParseTuple,
                           transform: @escaping (ParseTuple.Output) throws -> TransformedOutput ) {
        self.tuple = tuple()
        self.transform = transform
    }
}
