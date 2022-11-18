//
//  Lazy.swift
//
//
//  Created by Aaron Vranken on 24/06/2022.
//

import Foundation

public final class Lazy<Input, Output>: Parser {
    @usableFromInline
    internal var lazyParser: AnyParser<Input, Output>?
    
    @usableFromInline
    internal let createParser: () -> AnyParser<Input, Output>
    
    @inlinable
    public init(_ createParser: @escaping () -> AnyParser<Input, Output>) {
        self.createParser = createParser
    }
    
    @inlinable
    public func parse(_ input: Input) throws -> (Output, Input)? {
        if lazyParser == nil {
            lazyParser = createParser()
        }
        return try lazyParser!.parse(input)
    }
}
