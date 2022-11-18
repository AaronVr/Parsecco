//
//  ZeroOrMore.swift
//  
//
//  Created by Aaron Vranken on 28/06/2022.
//

import Foundation

public struct ZeroOrMore<P: Parser, Separator: Parser, Until: Parser>: Parser
where P.Input == Separator.Input, P.Input == Until.Input {
    @usableFromInline let parser: P
    @usableFromInline let separator: Separator?
    @usableFromInline let until: Until?
    @usableFromInline let mode: OrMoreMode

    @inlinable public init(@CaptureBuilder builder: () -> P)
    where Separator == NeverParser<P.Input>, Until == NeverParser<P.Input> {
        self.parser = builder()
        self.separator = nil
        self.until = nil
        
        self.mode = .normal
    }
    
    @inlinable public func parse(_ input: P.Input) throws -> ([P.Output], P.Input)? {
        switch mode {
        case .normal:
            return try parseWithoutSeparator(input)
        case .until:
            return try parseUntil(input)
        case .separator:
            return try parseWithSeparator(input)
        case .separatorUntil:
            return try parseWithSeparatorUntil(input)
        }
    }
}

extension ZeroOrMore {
    @inlinable public init<ParseType: Parser, TransformOutput>(@ParseBuilder builder: () -> ParseType,
                                                               transform: @escaping (ParseType.Output) throws -> TransformOutput)
    where P == Parse<ParseType, TransformOutput>,
    Separator == NeverParser<P.Input>,
    Until == NeverParser<P.Input>  {
        self.parser = Parse(tuple: builder, transform: transform)
        self.separator = nil
        self.until = nil
        
        self.mode = .normal
    }
}

extension ZeroOrMore {
    @inlinable func parseWithoutSeparator(_ input: P.Input) throws -> ([P.Output], P.Input)? {
        var results: [P.Output] = []
        var remaining = input
        
        while let (result, newRemaining) = try parser.parse(remaining) {
            results.append(result)
            remaining = newRemaining
        }
        
        return (results, remaining)
    }
}

extension ZeroOrMore {
    @inlinable public init(@CaptureBuilder builder: () -> P,
                           @ParseBuilder separator: () -> Separator)
    where Until == NeverParser<P.Input> {
        self.parser = builder()
        self.separator = separator()
        self.until = nil
        
        self.mode = .separator
    }
    
    @inlinable func parseWithSeparator(_ input: P.Input) throws -> ([P.Output], P.Input)? {
        guard let separator else {
            fatalError("ZeroOrMore.parseWithSeparator() was called with a nil separator. Please report this as a programming error.")
        }
        
        var results: [P.Output] = []
        var remaining = input
        
        var separatorMatch = true
        while let (result, newRemaining) = try parser.parse(remaining),
              separatorMatch {

            var newRemaining = newRemaining
            if let (_, separatorRemaining) = try separator.parse(newRemaining) {
                newRemaining = separatorRemaining
            } else {
                separatorMatch = false
            }
            
            results.append(result)
            remaining = newRemaining
        }
        
        return (results, remaining)
    }
}

extension ZeroOrMore {
    @inlinable public init(@CaptureBuilder builder: () -> P,
                           @ParseBuilder until: () -> Until)
    where Separator == NeverParser<P.Input> {
        self.parser = builder()
        self.separator = nil
        self.until = until()
        
        self.mode = .until
    }
    
    @inlinable func parseUntil(_ input: P.Input) throws -> ([P.Output], P.Input)? {
        guard let until else {
            fatalError("ZeroOrMore.parseUntil() was called with a nil separator or until parser. Please report this as a programming error.")
        }

        var results: [P.Output] = []
        var remaining = input
        
        var untilResult = try until.parse(remaining)
        
        while let (result, newRemaining) = try parser.parse(remaining), untilResult != nil {
            results.append(result)
            remaining = newRemaining
            
            untilResult = try until.parse(remaining)
        }
        
        if let untilResult {
            remaining = untilResult.1
        }
        return (results, remaining)
    }
}

extension ZeroOrMore {
    @inlinable public init(@CaptureBuilder builder: () -> P,
                           @ParseBuilder separator: () -> Separator,
                           @ParseBuilder until: () -> Until) {
        self.parser = builder()
        self.separator = separator()
        self.until = until()
        
        self.mode = .separatorUntil
    }
    
    @inlinable func parseWithSeparatorUntil(_ input: P.Input) throws -> ([P.Output], P.Input)? {
        guard let separator, let until else {
            fatalError("ZeroOrMore.parseWithSeparatorUntil() was called with a nil separator or until parser. Please report this as a programming error.")
        }

        var results: [P.Output] = []
        var remaining = input
        
        var untilResult = try until.parse(remaining)
        var separatorMatch = true
        
        while untilResult == nil, separatorMatch,
              let (result, newRemaining) = try parser.parse(remaining) {
            
            remaining = newRemaining
            results.append(result)
            
            if let (_, separatorRemaining) = try separator.parse(remaining) {
                remaining = separatorRemaining
            } else {
                separatorMatch = false
            }
            
            untilResult = try until.parse(remaining)
        }

        if let untilResult {
            remaining = untilResult.1
        }
        return (results, remaining)
    }
}
