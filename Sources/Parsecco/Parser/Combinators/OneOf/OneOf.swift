//
//  OneOf.swift
//  
//
//  Created by Aaron Vranken on 28/06/2022.
//

import Foundation

public struct OneOf<OneOfTuple: Parser>: Parser {
    @usableFromInline let tuple: OneOfTuple
    
    @inlinable public init(@OneOfBuilder builder: () -> OneOfTuple) {
        self.tuple = builder()
    }
    
    @inlinable public func parse(_ input: OneOfTuple.Input) throws -> (OneOfTuple.Output, OneOfTuple.Input)? {
        try tuple.parse(input)
    }
}
