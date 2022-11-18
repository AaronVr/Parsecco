//
//  OneOrMore.swift
//
//
//  Created by Aaron Vranken on 01/05/2022.
//

import Foundation

public struct OneOrMore<P: Parser, Separator: Parser, Until: Parser>: Parser
where P.Input == Separator.Input, P.Input == Until.Input {
    public let zeroOrMore: ZeroOrMore<P, Separator, Until>
    
    @inlinable public init(@CaptureBuilder builder: () -> P)
    where Separator == NeverParser<P.Input>, Until == NeverParser<P.Input> {
        self.zeroOrMore = ZeroOrMore(builder: builder)
    }

    @inlinable public func parse(_ input: P.Input) throws -> ([P.Output], P.Input)? {
        if let (result, remaining) = try zeroOrMore.parse(input),
           !result.isEmpty {
            return (result, remaining)
        }
        return nil
    }
}

extension OneOrMore {
    @inlinable public init(@CaptureBuilder builder: () -> P,
                           @ParseBuilder separator: () -> Separator)
    where Until == NeverParser<P.Input> {
        self.zeroOrMore = ZeroOrMore(builder: builder, separator: separator)
    }
}

extension OneOrMore {
    @inlinable public init(@CaptureBuilder builder: () -> P,
                           @ParseBuilder until: () -> Until)
    where Separator == NeverParser<P.Input> {
        self.zeroOrMore = ZeroOrMore(builder: builder, until: until)
    }
}

extension OneOrMore {
    @inlinable public init(@CaptureBuilder builder: () -> P,
                           @ParseBuilder separator: () -> Separator,
                           @ParseBuilder until: () -> Until) {
        self.zeroOrMore = ZeroOrMore(builder: builder, separator: separator, until: until)
    }
}
