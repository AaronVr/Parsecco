//
//  Capture.swift
//  
//
//  Created by Aaron Vranken on 28/06/2022.
//

import Foundation

public struct Capture<P: Parser>: Parser {
    @usableFromInline let parser: P
        
    @inlinable public init(@CaptureBuilder builder: () -> P) {
        self.parser = builder()
    }

    @inlinable public init<ParseType: Parser, TransformOutput>(@CaptureBuilder builder: () -> ParseType,
                           transform: @escaping (ParseType.Output) throws -> TransformOutput)
    where P == Parse<ParseType, TransformOutput> {
        self.parser = Parse(tuple: builder, transform: transform)
    }
    
    @inlinable public func parse(_ input: P.Input) throws -> (P.Output, P.Input)? {
        return try parser.parse(input)
    }
}
