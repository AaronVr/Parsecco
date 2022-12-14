//
//  Until.swift
//  
//
//  Created by Aaron Vranken on 30/06/2022.
//

import Foundation

public struct Until<End: Parser>: Parser
where End.Input: Collection, End.Input.SubSequence == End.Input {
    public let end: End
    
    @inlinable init(_ parser: End) {
        self.end = parser
    }
    
    @inlinable public init(@ParseBuilder builder: () -> End) {
        self.end = builder()
    }
    
    @inlinable
    public func parse(_ input: End.Input) throws -> (End.Input, End.Input)? {
        var remaining = input
        var untilResult = try end.parse(remaining)
        
        while untilResult == nil && !remaining.isEmpty   {
            _ = remaining.popFirst()
            untilResult = try end.parse(remaining)
        }
        
        return untilResult.map { (input[..<remaining.startIndex], $1) }
    }
}
