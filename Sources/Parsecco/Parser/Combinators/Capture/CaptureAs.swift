//
//  CaptureAs.swift
//  
//
//  Created by Aaron Vranken on 28/06/2022.
//

import Foundation

public struct CaptureAs<P: Parser>: Parser {
    @usableFromInline let parser: P
    @usableFromInline let reference: Reference<P.Output>
        
    @inlinable public init(_ reference: Reference<P.Output>, _ parser: P) {
        self.parser = parser
        self.reference = reference
    }
    
    @inlinable public func parse(_ input: P.Input) throws -> (P.Output, P.Input)? {
        if let result = try parser.parse(input) {
            reference.value = result.0
            return result
        }
        return nil
    }
    
}
