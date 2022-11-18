//
//  Optional.swift
//  
//
//  Created by Aaron Vranken on 30/06/2022.
//

import Foundation

extension Optional: Parser
where Wrapped: Parser {
    @inlinable public func parse(_ input: Wrapped.Input) throws -> (Wrapped.Output?, Wrapped.Input)? {
        try self?.parse(input) ?? (nil, input)
    }
}

extension Optional: ParserConvertible
where Wrapped: Parser {
    public var asParser: Self {
        self
    }
}

extension Optional
where Wrapped: Parser {
    public init(@CaptureBuilder builder: () -> Wrapped) {
        self = builder()
    }
}
