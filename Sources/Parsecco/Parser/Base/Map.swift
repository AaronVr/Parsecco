//
//  File.swift
//  
//
//  Created by Aaron Vranken on 28/06/2022.
//

import Foundation

public struct Map<P: Parser, Output>: Parser {
    @usableFromInline let parser: P
    @usableFromInline let transform: (P.Output) throws -> Output
    
    @inlinable public init(_ parser: P, _ transform: @escaping (P.Output) throws -> Output) {
        self.parser = parser
        self.transform = transform
    }

    @inlinable public func parse(_ input: P.Input) throws -> (Output, P.Input)? {
        return try parser.parse(input).map { (try transform($0), $1) }
    }
}

public extension Parser {
    @inlinable func transform<T>(_ transform: @escaping (Output) -> T) -> Map<Self, T> {
        Map(self, transform)
    }
}
