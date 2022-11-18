import Foundation

@resultBuilder
public enum ParseBuilder {}

public protocol ParseVoid: Parser
where Output == (Input) {}

public protocol ParseOutput1: Parser
where Output == (Input, Output1) {
    associatedtype Output1
}

public protocol ParseOutput2: Parser
where Output == (Input, Output1, Output2) {
    associatedtype Output1
    associatedtype Output2
}

public protocol ParseOutput3: Parser
where Output == (Input, Output1, Output2, Output3) {
    associatedtype Output1
    associatedtype Output2
    associatedtype Output3
}

public protocol ParseOutput4: Parser
where Output == (Input, Output1, Output2, Output3, Output4) {
    associatedtype Output1
    associatedtype Output2
    associatedtype Output3
    associatedtype Output4
}

public protocol ParseOutput5: Parser
where Output == (Input, Output1, Output2, Output3, Output4, Output5) {
    associatedtype Output1
    associatedtype Output2
    associatedtype Output3
    associatedtype Output4
    associatedtype Output5
}

public protocol ParseOutput6: Parser
where Output == (Input, Output1, Output2, Output3, Output4, Output5, Output6) {
    associatedtype Output1
    associatedtype Output2
    associatedtype Output3
    associatedtype Output4
    associatedtype Output5
    associatedtype Output6
}

public protocol ParseOutput7: Parser
where Output == (Input, Output1, Output2, Output3, Output4, Output5, Output6, Output7) {
    associatedtype Output1
    associatedtype Output2
    associatedtype Output3
    associatedtype Output4
    associatedtype Output5
    associatedtype Output6
    associatedtype Output7
}

public protocol ParseOutput8: Parser
where Output == (Input, Output1, Output2, Output3, Output4, Output5, Output6, Output7, Output8) {
    associatedtype Output1
    associatedtype Output2
    associatedtype Output3
    associatedtype Output4
    associatedtype Output5
    associatedtype Output6
    associatedtype Output7
    associatedtype Output8
}

public protocol ParseOutput9: Parser
where Output == (Input, Output1, Output2, Output3, Output4, Output5, Output6, Output7, Output8, Output9) {
    associatedtype Output1
    associatedtype Output2
    associatedtype Output3
    associatedtype Output4
    associatedtype Output5
    associatedtype Output6
    associatedtype Output7
    associatedtype Output8
    associatedtype Output9
}

public protocol ParseOutput10: Parser
where Output == (Input, Output1, Output2, Output3, Output4, Output5, Output6, Output7, Output8, Output9, Output10) {
    associatedtype Output1
    associatedtype Output2
    associatedtype Output3
    associatedtype Output4
    associatedtype Output5
    associatedtype Output6
    associatedtype Output7
    associatedtype Output8
    associatedtype Output9
    associatedtype Output10
}

public extension ParseBuilder {
    @inlinable static func buildPartialBlock<C: Parser>(first: Capture<C>) -> ParseO<C>
    where C.Input: Collection, C.Input == C.Input.SubSequence {
        return ParseO(first.parser)
    }
    
    @inlinable static func buildPartialBlock<P: ParserConvertible>(first: P) -> ParseV<P.ParserType>
    where P.ParserType.Input: Collection, P.ParserType.Input == P.ParserType.Input.SubSequence {
        return ParseV(first.asParser)
    }
    
    @inlinable static func buildPartialBlock<P0: ParseVoid, P1: ParserConvertible>(accumulated: P0, next: P1) -> ParseVVAccumulator<P0, P1.ParserType> {
        ParseVVAccumulator(accumulated, next.asParser)
    }
    
    @inlinable static func buildPartialBlock<P: ParseVoid, C: Parser>(accumulated: P, next: Capture<C>) -> ParseVOAccumulator<P, C>
    where P.Input == Capture<C>.Input {
        ParseVOAccumulator(accumulated, next.parser)
    }
    
    @inlinable static func buildPartialBlock<P0: ParseOutput1, P1: ParserConvertible>(accumulated: P0, next: P1) -> ParseOVAccumulator<P0, P1.ParserType> {
        ParseOVAccumulator(accumulated, next.asParser)
    }
    
    @inlinable static func buildPartialBlock<P0: ParseOutput1, P1: Parser>(accumulated: P0, next: Capture<P1>) -> ParseOOAccumulator<P0, P1> {
        ParseOOAccumulator(accumulated, next.parser)
    }
    
    @inlinable static func buildPartialBlock<P: ParseOutput2, C: Parser>(accumulated: P, next: Capture<C>) -> ParseOOOAccumulator<P, C> {
        ParseOOOAccumulator(accumulated, next.parser)
    }

    @inlinable static func buildPartialBlock<P0: ParseOutput2, P1: ParserConvertible>(accumulated: P0, next: P1) -> ParseOOVAccumulator<P0, P1.ParserType> {
        ParseOOVAccumulator(accumulated, next.asParser)
    }

    @inlinable static func buildPartialBlock<P: ParseOutput3, C: Parser>(accumulated: P, next: Capture<C>) -> ParseOOOOAccumulator<P, C> {
        ParseOOOOAccumulator(accumulated, next.parser)
    }

    @inlinable static func buildPartialBlock<P0: ParseOutput3, P1: ParserConvertible>(accumulated: P0, next: P1) -> ParseOOOVAccumulator<P0, P1.ParserType> {
        ParseOOOVAccumulator(accumulated, next.asParser)
    }

    @inlinable static func buildPartialBlock<P: ParseOutput4, C: Parser>(accumulated: P, next: Capture<C>) -> ParseOOOOOAccumulator<P, C> {
        ParseOOOOOAccumulator(accumulated, next.parser)
    }

    @inlinable static func buildPartialBlock<P0: ParseOutput4, P1: ParserConvertible>(accumulated: P0, next: P1) -> ParseOOOOVAccumulator<P0, P1.ParserType> {
        ParseOOOOVAccumulator(accumulated, next.asParser)
    }

    @inlinable static func buildPartialBlock<P: ParseOutput5, C: Parser>(accumulated: P, next: Capture<C>) -> ParseOOOOOOAccumulator<P, C> {
        ParseOOOOOOAccumulator(accumulated, next.parser)
    }

    @inlinable static func buildPartialBlock<P0: ParseOutput5, P1: ParserConvertible>(accumulated: P0, next: P1) -> ParseOOOOOVAccumulator<P0, P1.ParserType> {
        ParseOOOOOVAccumulator(accumulated, next.asParser)
    }

    @inlinable static func buildPartialBlock<P: ParseOutput6, C: Parser>(accumulated: P, next: Capture<C>) -> ParseOOOOOOOAccumulator<P, C> {
        ParseOOOOOOOAccumulator(accumulated, next.parser)
    }

    @inlinable static func buildPartialBlock<P0: ParseOutput6, P1: ParserConvertible>(accumulated: P0, next: P1) -> ParseOOOOOOVAccumulator<P0, P1.ParserType> {
        ParseOOOOOOVAccumulator(accumulated, next.asParser)
    }

    @inlinable static func buildPartialBlock<P: ParseOutput7, C: Parser>(accumulated: P, next: Capture<C>) -> ParseOOOOOOOOAccumulator<P, C> {
        ParseOOOOOOOOAccumulator(accumulated, next.parser)
    }

    @inlinable static func buildPartialBlock<P0: ParseOutput7, P1: ParserConvertible>(accumulated: P0, next: P1) -> ParseOOOOOOOVAccumulator<P0, P1.ParserType> {
        ParseOOOOOOOVAccumulator(accumulated, next.asParser)
    }

    @inlinable static func buildPartialBlock<P: ParseOutput8, C: Parser>(accumulated: P, next: Capture<C>) -> ParseOOOOOOOOOAccumulator<P, C> {
        ParseOOOOOOOOOAccumulator(accumulated, next.parser)
    }

    @inlinable static func buildPartialBlock<P0: ParseOutput8, P1: ParserConvertible>(accumulated: P0, next: P1) -> ParseOOOOOOOOVAccumulator<P0, P1.ParserType> {
        ParseOOOOOOOOVAccumulator(accumulated, next.asParser)
    }

    @inlinable static func buildPartialBlock<P: ParseOutput9, C: Parser>(accumulated: P, next: Capture<C>) -> ParseOOOOOOOOOOAccumulator<P, C> {
        ParseOOOOOOOOOOAccumulator(accumulated, next.parser)
    }

    @inlinable static func buildPartialBlock<P0: ParseOutput9, P1: ParserConvertible>(accumulated: P0, next: P1) -> ParseOOOOOOOOOVAccumulator<P0, P1.ParserType> {
        ParseOOOOOOOOOVAccumulator(accumulated, next.asParser)
    }
}

extension ParseBuilder {
    
    public struct ParseO<C0: Parser>: ParseOutput1
    where C0.Input: Collection, C0.Input == C0.Input.SubSequence {
        public typealias Output1 = C0.Output
        
        public typealias Input = C0.Input
        public typealias Output = (C0.Input, C0.Output)
        @usableFromInline let c0: C0
        
        @inlinable public init(_ c0: C0) {
            self.c0 = c0
        }
        
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let (r1, remaining) = try c0.parse(input) {
                return ((input[input.startIndex..<remaining.startIndex], r1), remaining)
            }
            return nil
        }
    }
    
    public struct ParseV<P0: Parser>: ParseVoid
    where P0.Input: Collection, P0.Input == P0.Input.SubSequence {
        public typealias Input = P0.Input
        public typealias Output = (P0.Input)
        @usableFromInline let p0: P0
        
        @inlinable public init(_ p0: P0) {
            self.p0 = p0
        }
        
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let (_, remaining) = try p0.parse(input) {
                return ((input[input.startIndex..<remaining.startIndex]), remaining)
            }
            return nil
        }
    }
    
    public struct ParseVVAccumulator<P0: ParseVoid, P1: Parser>: ParseVoid
    where P0.Input: Collection, P0.Input == P0.Input.SubSequence, P0.Input == P1.Input {
        public typealias Input = P0.Input
        public typealias Output = (P0.Input)
        @usableFromInline let p0: P0, p1: P1
        
        @inlinable public init(_ p0: P0, _ p1: P1) {
            self.p0 = p0
            self.p1 = p1
        }
        
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let (_, remaining) = try p0.parse(input),
               let (_, remaining) = try p1.parse(remaining) {
                return ((input[input.startIndex..<remaining.startIndex]), remaining)
            }
            return nil
        }
    }
    
    public struct ParseVOAccumulator<P0: ParseVoid, P1: Parser>: ParseOutput1
    where P0.Input: Collection, P0.Input == P0.Input.SubSequence, P0.Input == P1.Input {
        public typealias Output1 = P1.Output
        public typealias Input = P0.Input
        public typealias Output = (P0.Input, P1.Output)
        @usableFromInline let p0: P0, p1: P1
        
        @inlinable public init(_ p0: P0, _ p1: P1) {
            self.p0 = p0
            self.p1 = p1
        }
        
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let (_, remaining) = try p0.parse(input),
               let (r0, remaining) = try p1.parse(remaining) {
                return ((input[input.startIndex..<remaining.startIndex], r0), remaining)
            }
            return nil
        }
    }
    
    public struct ParseOVAccumulator<P0: ParseOutput1, P1: Parser>: ParseOutput1
    where P0.Input: Collection, P0.Input == P0.Input.SubSequence, P0.Input == P1.Input {
        public typealias Output1 = P0.Output1
        public typealias Input = P0.Input
        public typealias Output = (P0.Input, P0.Output1)
        @usableFromInline let p0: P0, p1: P1
        
        @inlinable public init(_ p0: P0, _ p1: P1) {
            self.p0 = p0
            self.p1 = p1
        }
        
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let ((_, r0), remaining) = try p0.parse(input),
               let (_, remaining) = try p1.parse(remaining) {
                return ((input[input.startIndex..<remaining.startIndex], r0), remaining)
            }
            return nil
        }
    }
    
    public struct ParseOOAccumulator<P0: ParseOutput1, P1: Parser>: ParseOutput2
    where P0.Input: Collection, P0.Input == P0.Input.SubSequence, P0.Input == P1.Input {
        public typealias Output1 = P0.Output1
        public typealias Output2 = P1.Output
        
        public typealias Input = P0.Input
        public typealias Output = (P0.Input, P0.Output1, P1.Output)
        @usableFromInline let p0: P0, p1: P1
        
        @inlinable public init(_ p0: P0, _ p1: P1) {
            self.p0 = p0
            self.p1 = p1
        }
        
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let ((_, r0), remaining) = try p0.parse(input),
               let (r1, remaining) = try p1.parse(remaining) {
                return ((input[input.startIndex..<remaining.startIndex], r0, r1), remaining)
            }
            return nil
        }
    }
    
    public struct ParseOOOAccumulator<P0: ParseOutput2, P1: Parser>: ParseOutput3
    where P0.Input: Collection, P0.Input == P0.Input.SubSequence, P0.Input == P1.Input {
        public typealias Output1 = P0.Output1
        public typealias Output2 = P0.Output2
        public typealias Output3 = P1.Output
        public typealias Input = P0.Input
        public typealias Output = (P0.Input, P0.Output1, P0.Output2, P1.Output)
        
        @usableFromInline let p0: P0, p1: P1
        
        @inlinable public init(_ p0: P0, _ p1: P1) {
            self.p0 = p0
            self.p1 = p1
        }
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let ((_, r0, r1), remaining) = try p0.parse(input),
               let (r2, remaining) = try p1.parse(remaining) {
                return ((input[input.startIndex..<remaining.startIndex], r0, r1, r2), remaining)
            }
            return nil
        }
    }
    
    public struct ParseOOVAccumulator<P0: ParseOutput2, P1: Parser>: ParseOutput2
    where P0.Input: Collection, P0.Input == P0.Input.SubSequence, P0.Input == P1.Input {
        public typealias Output1 = P0.Output1
        public typealias Output2 = P0.Output2
        public typealias Input = P0.Input
        public typealias Output = (P0.Input, P0.Output1, P0.Output2)
        
        @usableFromInline let p0: P0, p1: P1
        
        @inlinable public init(_ p0: P0, _ p1: P1) {
            self.p0 = p0
            self.p1 = p1
        }
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let ((_, r0, r1), remaining) = try p0.parse(input),
               let (_, remaining) = try p1.parse(remaining) {
                return ((input[input.startIndex..<remaining.startIndex], r0, r1), remaining)
            }
            return nil
        }
    }
    
    public struct ParseOOOOAccumulator<P0: ParseOutput3, P1: Parser>: ParseOutput4
    where P0.Input: Collection, P0.Input == P0.Input.SubSequence, P0.Input == P1.Input {
        public typealias Output1 = P0.Output1
        public typealias Output2 = P0.Output2
        public typealias Output3 = P0.Output3
        public typealias Output4 = P1.Output
        public typealias Input = P0.Input
        public typealias Output = (P0.Input, P0.Output1, P0.Output2, P0.Output3, P1.Output)
        
        @usableFromInline let p0: P0, p1: P1
        
        @inlinable public init(_ p0: P0, _ p1: P1) {
            self.p0 = p0
            self.p1 = p1
        }
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let ((_, r0, r1, r2), remaining) = try p0.parse(input),
               let (r3, remaining) = try p1.parse(remaining) {
                return ((input[input.startIndex..<remaining.startIndex], r0, r1, r2, r3), remaining)
            }
            return nil
        }
    }
    
    public struct ParseOOOVAccumulator<P0: ParseOutput3, P1: Parser>: ParseOutput3
    where P0.Input: Collection, P0.Input == P0.Input.SubSequence, P0.Input == P1.Input {
        public typealias Output1 = P0.Output1
        public typealias Output2 = P0.Output2
        public typealias Output3 = P0.Output3
        public typealias Input = P0.Input
        public typealias Output = (P0.Input, P0.Output1, P0.Output2, P0.Output3)
        
        @usableFromInline let p0: P0, p1: P1
        
        @inlinable public init(_ p0: P0, _ p1: P1) {
            self.p0 = p0
            self.p1 = p1
        }
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let ((_, r0, r1, r2), remaining) = try p0.parse(input),
               let (_, remaining) = try p1.parse(remaining) {
                return ((input[input.startIndex..<remaining.startIndex], r0, r1, r2), remaining)
            }
            return nil
        }
    }
    
    public struct ParseOOOOOAccumulator<P0: ParseOutput4, P1: Parser>: ParseOutput5
    where P0.Input: Collection, P0.Input == P0.Input.SubSequence, P0.Input == P1.Input {
        public typealias Output1 = P0.Output1
        public typealias Output2 = P0.Output2
        public typealias Output3 = P0.Output3
        public typealias Output4 = P0.Output4
        public typealias Output5 = P1.Output
        public typealias Input = P0.Input
        public typealias Output = (P0.Input, P0.Output1, P0.Output2, P0.Output3, P0.Output4, P1.Output)
        
        @usableFromInline let p0: P0, p1: P1
        
        @inlinable public init(_ p0: P0, _ p1: P1) {
            self.p0 = p0
            self.p1 = p1
        }
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let ((_, r0, r1, r2, r3), remaining) = try p0.parse(input),
               let (r4, remaining) = try p1.parse(remaining) {
                return ((input[input.startIndex..<remaining.startIndex], r0, r1, r2, r3, r4), remaining)
            }
            return nil
        }
    }
    
    public struct ParseOOOOVAccumulator<P0: ParseOutput4, P1: Parser>: ParseOutput4
    where P0.Input: Collection, P0.Input == P0.Input.SubSequence, P0.Input == P1.Input {
        public typealias Output1 = P0.Output1
        public typealias Output2 = P0.Output2
        public typealias Output3 = P0.Output3
        public typealias Output4 = P0.Output4
        public typealias Input = P0.Input
        public typealias Output = (P0.Input, P0.Output1, P0.Output2, P0.Output3, P0.Output4)
        
        @usableFromInline let p0: P0, p1: P1
        
        @inlinable public init(_ p0: P0, _ p1: P1) {
            self.p0 = p0
            self.p1 = p1
        }
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let ((_, r0, r1, r2, r3), remaining) = try p0.parse(input),
               let (_, remaining) = try p1.parse(remaining) {
                return ((input[input.startIndex..<remaining.startIndex], r0, r1, r2, r3), remaining)
            }
            return nil
        }
    }
    
    public struct ParseOOOOOOAccumulator<P0: ParseOutput5, P1: Parser>: ParseOutput6
    where P0.Input: Collection, P0.Input == P0.Input.SubSequence, P0.Input == P1.Input {
        public typealias Output1 = P0.Output1
        public typealias Output2 = P0.Output2
        public typealias Output3 = P0.Output3
        public typealias Output4 = P0.Output4
        public typealias Output5 = P0.Output5
        public typealias Output6 = P1.Output
        public typealias Input = P0.Input
        public typealias Output = (P0.Input, P0.Output1, P0.Output2, P0.Output3, P0.Output4, P0.Output5, P1.Output)
        
        @usableFromInline let p0: P0, p1: P1
        
        @inlinable public init(_ p0: P0, _ p1: P1) {
            self.p0 = p0
            self.p1 = p1
        }
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let ((_, r0, r1, r2, r3, r4), remaining) = try p0.parse(input),
               let (r5, remaining) = try p1.parse(remaining) {
                return ((input[input.startIndex..<remaining.startIndex], r0, r1, r2, r3, r4, r5), remaining)
            }
            return nil
        }
    }
    
    public struct ParseOOOOOVAccumulator<P0: ParseOutput5, P1: Parser>: ParseOutput5
    where P0.Input: Collection, P0.Input == P0.Input.SubSequence, P0.Input == P1.Input {
        public typealias Output1 = P0.Output1
        public typealias Output2 = P0.Output2
        public typealias Output3 = P0.Output3
        public typealias Output4 = P0.Output4
        public typealias Output5 = P0.Output5
        public typealias Input = P0.Input
        public typealias Output = (P0.Input, P0.Output1, P0.Output2, P0.Output3, P0.Output4, P0.Output5)
        
        @usableFromInline let p0: P0, p1: P1
        
        @inlinable public init(_ p0: P0, _ p1: P1) {
            self.p0 = p0
            self.p1 = p1
        }
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let ((_, r0, r1, r2, r3, r4), remaining) = try p0.parse(input),
               let (_, remaining) = try p1.parse(remaining) {
                return ((input[input.startIndex..<remaining.startIndex], r0, r1, r2, r3, r4), remaining)
            }
            return nil
        }
    }
    
    public struct ParseOOOOOOOAccumulator<P0: ParseOutput6, P1: Parser>: ParseOutput7
    where P0.Input: Collection, P0.Input == P0.Input.SubSequence, P0.Input == P1.Input {
        public typealias Output1 = P0.Output1
        public typealias Output2 = P0.Output2
        public typealias Output3 = P0.Output3
        public typealias Output4 = P0.Output4
        public typealias Output5 = P0.Output5
        public typealias Output6 = P0.Output6
        public typealias Output7 = P1.Output
        public typealias Input = P0.Input
        public typealias Output = (P0.Input, P0.Output1, P0.Output2, P0.Output3, P0.Output4, P0.Output5, P0.Output6, P1.Output)
        
        @usableFromInline let p0: P0, p1: P1
        
        @inlinable public init(_ p0: P0, _ p1: P1) {
            self.p0 = p0
            self.p1 = p1
        }
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let ((_, r0, r1, r2, r3, r4, r5), remaining) = try p0.parse(input),
               let (r6, remaining) = try p1.parse(remaining) {
                return ((input[input.startIndex..<remaining.startIndex], r0, r1, r2, r3, r4, r5, r6), remaining)
            }
            return nil
        }
    }
    
    public struct ParseOOOOOOVAccumulator<P0: ParseOutput6, P1: Parser>: ParseOutput6
    where P0.Input: Collection, P0.Input == P0.Input.SubSequence, P0.Input == P1.Input {
        public typealias Output1 = P0.Output1
        public typealias Output2 = P0.Output2
        public typealias Output3 = P0.Output3
        public typealias Output4 = P0.Output4
        public typealias Output5 = P0.Output5
        public typealias Output6 = P0.Output6
        public typealias Input = P0.Input
        public typealias Output = (P0.Input, P0.Output1, P0.Output2, P0.Output3, P0.Output4, P0.Output5, P0.Output6)
        
        @usableFromInline let p0: P0, p1: P1
        
        @inlinable public init(_ p0: P0, _ p1: P1) {
            self.p0 = p0
            self.p1 = p1
        }
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let ((_, r0, r1, r2, r3, r4, r5), remaining) = try p0.parse(input),
               let (_, remaining) = try p1.parse(remaining) {
                return ((input[input.startIndex..<remaining.startIndex], r0, r1, r2, r3, r4, r5), remaining)
            }
            return nil
        }
    }
    
    public struct ParseOOOOOOOOAccumulator<P0: ParseOutput7, P1: Parser>: ParseOutput8
    where P0.Input: Collection, P0.Input == P0.Input.SubSequence, P0.Input == P1.Input {
        public typealias Output1 = P0.Output1
        public typealias Output2 = P0.Output2
        public typealias Output3 = P0.Output3
        public typealias Output4 = P0.Output4
        public typealias Output5 = P0.Output5
        public typealias Output6 = P0.Output6
        public typealias Output7 = P0.Output7
        public typealias Output8 = P1.Output
        public typealias Input = P0.Input
        public typealias Output = (P0.Input, P0.Output1, P0.Output2, P0.Output3, P0.Output4, P0.Output5, P0.Output6, P0.Output7, P1.Output)
        
        @usableFromInline let p0: P0, p1: P1
        
        @inlinable public init(_ p0: P0, _ p1: P1) {
            self.p0 = p0
            self.p1 = p1
        }
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let ((_, r0, r1, r2, r3, r4, r5, r6), remaining) = try p0.parse(input),
               let (r7, remaining) = try p1.parse(remaining) {
                return ((input[input.startIndex..<remaining.startIndex], r0, r1, r2, r3, r4, r5, r6, r7), remaining)
            }
            return nil
        }
    }
    
    public struct ParseOOOOOOOVAccumulator<P0: ParseOutput7, P1: Parser>: ParseOutput7
    where P0.Input: Collection, P0.Input == P0.Input.SubSequence, P0.Input == P1.Input {
        public typealias Output1 = P0.Output1
        public typealias Output2 = P0.Output2
        public typealias Output3 = P0.Output3
        public typealias Output4 = P0.Output4
        public typealias Output5 = P0.Output5
        public typealias Output6 = P0.Output6
        public typealias Output7 = P0.Output7
        public typealias Input = P0.Input
        public typealias Output = (P0.Input, P0.Output1, P0.Output2, P0.Output3, P0.Output4, P0.Output5, P0.Output6, P0.Output7)
        
        @usableFromInline let p0: P0, p1: P1
        
        @inlinable public init(_ p0: P0, _ p1: P1) {
            self.p0 = p0
            self.p1 = p1
        }
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let ((_, r0, r1, r2, r3, r4, r5, r6), remaining) = try p0.parse(input),
               let (_, remaining) = try p1.parse(remaining) {
                return ((input[input.startIndex..<remaining.startIndex], r0, r1, r2, r3, r4, r5, r6), remaining)
            }
            return nil
        }
    }
    
    public struct ParseOOOOOOOOOAccumulator<P0: ParseOutput8, P1: Parser>: ParseOutput9
    where P0.Input: Collection, P0.Input == P0.Input.SubSequence, P0.Input == P1.Input {
        public typealias Output1 = P0.Output1
        public typealias Output2 = P0.Output2
        public typealias Output3 = P0.Output3
        public typealias Output4 = P0.Output4
        public typealias Output5 = P0.Output5
        public typealias Output6 = P0.Output6
        public typealias Output7 = P0.Output7
        public typealias Output8 = P0.Output8
        public typealias Output9 = P1.Output
        public typealias Input = P0.Input
        public typealias Output = (P0.Input, P0.Output1, P0.Output2, P0.Output3, P0.Output4, P0.Output5, P0.Output6, P0.Output7, P0.Output8, P1.Output)
        
        @usableFromInline let p0: P0, p1: P1
        
        @inlinable public init(_ p0: P0, _ p1: P1) {
            self.p0 = p0
            self.p1 = p1
        }
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let ((_, r0, r1, r2, r3, r4, r5, r6, r7), remaining) = try p0.parse(input),
               let (r8, remaining) = try p1.parse(remaining) {
                return ((input[input.startIndex..<remaining.startIndex], r0, r1, r2, r3, r4, r5, r6, r7, r8), remaining)
            }
            return nil
        }
    }
    
    public struct ParseOOOOOOOOVAccumulator<P0: ParseOutput8, P1: Parser>: ParseOutput8
    where P0.Input: Collection, P0.Input == P0.Input.SubSequence, P0.Input == P1.Input {
        public typealias Output1 = P0.Output1
        public typealias Output2 = P0.Output2
        public typealias Output3 = P0.Output3
        public typealias Output4 = P0.Output4
        public typealias Output5 = P0.Output5
        public typealias Output6 = P0.Output6
        public typealias Output7 = P0.Output7
        public typealias Output8 = P0.Output8
        public typealias Input = P0.Input
        public typealias Output = (P0.Input, P0.Output1, P0.Output2, P0.Output3, P0.Output4, P0.Output5, P0.Output6, P0.Output7, P0.Output8)
        
        @usableFromInline let p0: P0, p1: P1
        
        @inlinable public init(_ p0: P0, _ p1: P1) {
            self.p0 = p0
            self.p1 = p1
        }
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let ((_, r0, r1, r2, r3, r4, r5, r6, r7), remaining) = try p0.parse(input),
               let (_, remaining) = try p1.parse(remaining) {
                return ((input[input.startIndex..<remaining.startIndex], r0, r1, r2, r3, r4, r5, r6, r7), remaining)
            }
            return nil
        }
    }
    
    public struct ParseOOOOOOOOOOAccumulator<P0: ParseOutput9, P1: Parser>: ParseOutput10
    where P0.Input: Collection, P0.Input == P0.Input.SubSequence, P0.Input == P1.Input {
        public typealias Output1 = P0.Output1
        public typealias Output2 = P0.Output2
        public typealias Output3 = P0.Output3
        public typealias Output4 = P0.Output4
        public typealias Output5 = P0.Output5
        public typealias Output6 = P0.Output6
        public typealias Output7 = P0.Output7
        public typealias Output8 = P0.Output8
        public typealias Output9 = P0.Output9
        public typealias Output10 = P1.Output
        public typealias Input = P0.Input
        public typealias Output = (P0.Input, P0.Output1, P0.Output2, P0.Output3, P0.Output4, P0.Output5, P0.Output6, P0.Output7, P0.Output8, P0.Output9, P1.Output)
        
        @usableFromInline let p0: P0, p1: P1
        
        @inlinable public init(_ p0: P0, _ p1: P1) {
            self.p0 = p0
            self.p1 = p1
        }
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let ((_, r0, r1, r2, r3, r4, r5, r6, r7, r8), remaining) = try p0.parse(input),
               let (r9, remaining) = try p1.parse(remaining) {
                return ((input[input.startIndex..<remaining.startIndex], r0, r1, r2, r3, r4, r5, r6, r7, r8, r9), remaining)
            }
            return nil
        }
    }
    
    public struct ParseOOOOOOOOOVAccumulator<P0: ParseOutput9, P1: Parser>: ParseOutput9
    where P0.Input: Collection, P0.Input == P0.Input.SubSequence, P0.Input == P1.Input {
        public typealias Output1 = P0.Output1
        public typealias Output2 = P0.Output2
        public typealias Output3 = P0.Output3
        public typealias Output4 = P0.Output4
        public typealias Output5 = P0.Output5
        public typealias Output6 = P0.Output6
        public typealias Output7 = P0.Output7
        public typealias Output8 = P0.Output8
        public typealias Output9 = P0.Output9
        public typealias Input = P0.Input
        public typealias Output = (P0.Input, P0.Output1, P0.Output2, P0.Output3, P0.Output4, P0.Output5, P0.Output6, P0.Output7, P0.Output8, P0.Output9)
        
        @usableFromInline let p0: P0, p1: P1
        
        @inlinable public init(_ p0: P0, _ p1: P1) {
            self.p0 = p0
            self.p1 = p1
        }
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let ((_, r0, r1, r2, r3, r4, r5, r6, r7, r8), remaining) = try p0.parse(input),
               let (_, remaining) = try p1.parse(remaining) {
                return ((input[input.startIndex..<remaining.startIndex], r0, r1, r2, r3, r4, r5, r6, r7, r8), remaining)
            }
            return nil
        }
    }
}
