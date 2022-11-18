//
//  OneOfTuples.swift
//  
//
//  Created by Aaron Vranken on 28/06/2022.
//

import Foundation

public extension OneOfBuilder {
    struct OneOfTuple2<P0: Parser, P1: Parser>: Parser
    where P0.Input == P1.Input, P0.Output == P1.Output {
        public typealias Input = P0.Input
        public typealias Output = P0.Output
        
        @usableFromInline let p0:P0, p1: P1
        
        @inlinable public init(_ p0: P0, _ p1: P1) {
            self.p0 = p0
            self.p1 = p1
        }
        
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            try p0.parse(input) ?? (try p1.parse(input))
        }
    }
    
    struct OneOfTuple3<P0: Parser, P1: Parser, P2: Parser>: Parser
    where P0.Input == P1.Input, P0.Output == P1.Output, P0.Input == P2.Input, P0.Output == P2.Output {
        public typealias Input = P0.Input
        public typealias Output = P0.Output
        
        @usableFromInline let p0:P0, p1: P1, p2: P2
        
        @inlinable public init(_ p0: P0, _ p1: P1, _ p2: P2) {
            self.p0 = p0
            self.p1 = p1
            self.p2 = p2
        }
        
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            try p0.parse(input) ?? (try p1.parse(input)) ?? (try p2.parse(input))
        }
    }
    
    struct OneOfTuple4<P0: Parser, P1: Parser, P2: Parser, P3: Parser>: Parser
    where P0.Input == P1.Input, P0.Output == P1.Output, P0.Input == P2.Input, P0.Output == P2.Output, P0.Input == P3.Input, P0.Output == P3.Output {
        public typealias Input = P0.Input
        public typealias Output = P0.Output
        
        @usableFromInline let p0:P0, p1: P1, p2: P2, p3: P3
        
        @inlinable public init(_ p0: P0, _ p1: P1, _ p2: P2, _ p3: P3) {
            self.p0 = p0
            self.p1 = p1
            self.p2 = p2
            self.p3 = p3
        }
        
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            try p0.parse(input) ?? (try p1.parse(input)) ?? (try p2.parse(input)) ?? (try p3.parse(input))
        }
    }
    
    struct OneOfTuple5<P0: Parser, P1: Parser, P2: Parser, P3: Parser, P4: Parser>: Parser
    where P0.Input == P1.Input, P0.Output == P1.Output, P0.Input == P2.Input, P0.Output == P2.Output, P0.Input == P3.Input, P0.Output == P3.Output, P0.Input == P4.Input, P0.Output == P4.Output {
        public typealias Input = P0.Input
        public typealias Output = P0.Output
        
        @usableFromInline let p0:P0, p1: P1, p2: P2, p3: P3, p4: P4
        
        @inlinable public init(_ p0: P0, _ p1: P1, _ p2: P2, _ p3: P3, _ p4: P4) {
            self.p0 = p0
            self.p1 = p1
            self.p2 = p2
            self.p3 = p3
            self.p4 = p4
        }
        
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            try p0.parse(input) ?? (try p1.parse(input)) ?? (try p2.parse(input)) ?? (try p3.parse(input)) ?? (try p4.parse(input))
        }
    }
    
    struct OneOfTuple6<P0: Parser, P1: Parser, P2: Parser, P3: Parser, P4: Parser, P5: Parser>: Parser
    where P0.Input == P1.Input, P0.Output == P1.Output, P0.Input == P2.Input, P0.Output == P2.Output, P0.Input == P3.Input, P0.Output == P3.Output, P0.Input == P4.Input, P0.Output == P4.Output, P0.Input == P5.Input, P0.Output == P5.Output {
        public typealias Input = P0.Input
        public typealias Output = P0.Output
        
        @usableFromInline let p0:P0, p1: P1, p2: P2, p3: P3, p4: P4, p5: P5
        
        @inlinable public init(_ p0: P0, _ p1: P1, _ p2: P2, _ p3: P3, _ p4: P4, _ p5: P5) {
            self.p0 = p0
            self.p1 = p1
            self.p2 = p2
            self.p3 = p3
            self.p4 = p4
            self.p5 = p5
        }
        
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            try p0.parse(input) ?? (try p1.parse(input)) ?? (try p2.parse(input)) ?? (try p3.parse(input)) ?? (try p4.parse(input)) ?? (try p5.parse(input))
        }
    }
    
    struct OneOfTuple7<P0: Parser, P1: Parser, P2: Parser, P3: Parser, P4: Parser, P5: Parser, P6: Parser>: Parser
    where P0.Input == P1.Input, P0.Output == P1.Output, P0.Input == P2.Input, P0.Output == P2.Output, P0.Input == P3.Input, P0.Output == P3.Output, P0.Input == P4.Input, P0.Output == P4.Output, P0.Input == P5.Input, P0.Output == P5.Output,
          P0.Input == P6.Input, P0.Output == P6.Output {
        public typealias Input = P0.Input
        public typealias Output = P0.Output
        
        @usableFromInline let p0:P0, p1: P1, p2: P2, p3: P3, p4: P4, p5: P5, p6: P6
        
        @inlinable public init(_ p0: P0, _ p1: P1, _ p2: P2, _ p3: P3, _ p4: P4, _ p5: P5, _ p6: P6) {
            self.p0 = p0
            self.p1 = p1
            self.p2 = p2
            self.p3 = p3
            self.p4 = p4
            self.p5 = p5
            self.p6 = p6
        }
        
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            try p0.parse(input) ?? (try p1.parse(input)) ?? (try p2.parse(input)) ?? (try p3.parse(input)) ?? (try p4.parse(input)) ?? (try p5.parse(input)) ?? (try p6.parse(input))
        }
    }
    
    struct OneOfTuple8<P0: Parser, P1: Parser, P2: Parser, P3: Parser, P4: Parser, P5: Parser, P6: Parser, P7: Parser>: Parser
    where P0.Input == P1.Input, P0.Output == P1.Output, P0.Input == P2.Input, P0.Output == P2.Output, P0.Input == P3.Input, P0.Output == P3.Output, P0.Input == P4.Input, P0.Output == P4.Output, P0.Input == P5.Input, P0.Output == P5.Output,
          P0.Input == P6.Input, P0.Output == P6.Output, P0.Input == P7.Input, P0.Output == P7.Output {
        public typealias Input = P0.Input
        public typealias Output = P0.Output
        
        @usableFromInline let p0:P0, p1: P1, p2: P2, p3: P3, p4: P4, p5: P5, p6: P6, p7: P7
        
        @inlinable public init(_ p0: P0, _ p1: P1, _ p2: P2, _ p3: P3, _ p4: P4, _ p5: P5, _ p6: P6, _ p7: P7) {
            self.p0 = p0
            self.p1 = p1
            self.p2 = p2
            self.p3 = p3
            self.p4 = p4
            self.p5 = p5
            self.p6 = p6
            self.p7 = p7
        }
        
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            try p0.parse(input) ?? (try p1.parse(input)) ?? (try p2.parse(input)) ?? (try p3.parse(input)) ?? (try p4.parse(input)) ?? (try p5.parse(input)) ?? ((try p6.parse(input)) ?? (try p7.parse(input))) as (Output, Input)?
        }
    }
    
    struct OneOfTuple9<P0: Parser, P1: Parser, P2: Parser, P3: Parser, P4: Parser, P5: Parser, P6: Parser, P7: Parser, P8: Parser>: Parser
    where P0.Input == P1.Input, P0.Output == P1.Output, P0.Input == P2.Input, P0.Output == P2.Output, P0.Input == P3.Input, P0.Output == P3.Output, P0.Input == P4.Input, P0.Output == P4.Output, P0.Input == P5.Input, P0.Output == P5.Output,
          P0.Input == P6.Input, P0.Output == P6.Output, P0.Input == P7.Input, P0.Output == P7.Output, P0.Input == P8.Input, P0.Output == P8.Output {
        public typealias Input = P0.Input
        public typealias Output = P0.Output
        
        @usableFromInline let p0:P0, p1: P1, p2: P2, p3: P3, p4: P4, p5: P5, p6: P6, p7: P7, p8: P8
        
        @inlinable public init(_ p0: P0, _ p1: P1, _ p2: P2, _ p3: P3, _ p4: P4, _ p5: P5, _ p6: P6, _ p7: P7, _ p8: P8) {
            self.p0 = p0
            self.p1 = p1
            self.p2 = p2
            self.p3 = p3
            self.p4 = p4
            self.p5 = p5
            self.p6 = p6
            self.p7 = p7
            self.p8 = p8
        }
        
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            try p0.parse(input) ?? (try p1.parse(input)) ?? (try p2.parse(input)) ?? (try p3.parse(input)) ?? (try p4.parse(input)) ?? (try p5.parse(input)) ?? ((try p6.parse(input)) ?? (try p7.parse(input)) ?? (try p8.parse(input))) as (Output, Input)?
        }
    }
    
    struct OneOfTuple10<P0: Parser, P1: Parser, P2: Parser, P3: Parser, P4: Parser, P5: Parser, P6: Parser, P7: Parser, P8: Parser, P9: Parser>: Parser
    where P0.Input == P1.Input, P0.Output == P1.Output, P0.Input == P2.Input, P0.Output == P2.Output, P0.Input == P3.Input, P0.Output == P3.Output, P0.Input == P4.Input, P0.Output == P4.Output, P0.Input == P5.Input, P0.Output == P5.Output,
          P0.Input == P6.Input, P0.Output == P6.Output, P0.Input == P7.Input, P0.Output == P7.Output, P0.Input == P8.Input, P0.Output == P8.Output, P0.Input == P9.Input, P0.Output == P9.Output {
        public typealias Input = P0.Input
        public typealias Output = P0.Output
        
        @usableFromInline let p0:P0, p1: P1, p2: P2, p3: P3, p4: P4, p5: P5, p6: P6, p7: P7, p8: P8, p9: P9
        
        @inlinable public init(_ p0: P0, _ p1: P1, _ p2: P2, _ p3: P3, _ p4: P4, _ p5: P5, _ p6: P6, _ p7: P7, _ p8: P8, _ p9: P9) {
            self.p0 = p0
            self.p1 = p1
            self.p2 = p2
            self.p3 = p3
            self.p4 = p4
            self.p5 = p5
            self.p6 = p6
            self.p7 = p7
            self.p8 = p8
            self.p9 = p9
        }
        
        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            try p0.parse(input) ?? (try p1.parse(input)) ?? (try p2.parse(input)) ?? (try p3.parse(input)) ?? (try p4.parse(input)) ?? (try p5.parse(input)) ?? ((try p6.parse(input)) ?? (try p7.parse(input)) ?? (try p8.parse(input)) ?? p9.parse(input)) as (Output, Input)?
        }
    }
}
