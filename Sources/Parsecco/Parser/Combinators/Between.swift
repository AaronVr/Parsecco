//
//  Between.swift
//  
//
//  Created by Aaron Vranken on 06/07/2022.
//

import Foundation

public struct Between<Begin: Parser, End: Parser>: Parser
where Begin.Input: Collection, Begin.Input == Begin.Input.SubSequence, Begin.Input == End.Input {
    public typealias Input = Begin.Input
    
    @usableFromInline
    internal let begin: Begin
    @usableFromInline
    internal let untilEnd: Until<End>
    
    @inlinable
    public init<B: ParserConvertible, E: ParserConvertible>(_ begin: B, and end: E)
    where Begin == B.ParserType, End == E.ParserType {
        self.begin = begin.asParser
        self.untilEnd = Until(end.asParser)
    }
    
    @inlinable
    public init(@ParseBuilder begin: () -> Begin, @ParseBuilder and end: () -> End) {
        self.begin = begin()
        self.untilEnd = Until(end())
    }
    
    @inlinable
    public func parse(_ input: Input) throws -> (Input, Input)? {
        if let (_, remaining) = try begin.parse(input) {
            return try untilEnd.parse(remaining)
        }
        return nil
    }
}
