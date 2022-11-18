//
//  CaptureTuples.swift
//
//
//  Created by Aaron Vranken on 28/06/2022.
//

import Foundation

extension CaptureBuilder {
    public struct CaptureTuple2<P0: Parser, P1: Parser>: Parser
    where P0.Input: Collection, P0.Input == P0.Input.SubSequence, P0.Input == P1.Input {
        public typealias Input = P0.Input
        public typealias Output = (P0.Output, P1.Output)
        @usableFromInline let p0: P0, p1: P1

        @inlinable public init(_ p0: P0, _ p1: P1) {
            self.p0 = p0
            self.p1 = p1
        }

        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let (r1, remaining) = try p0.parse(input),
               let (r2, remaining) = try p1.parse(remaining) {
                return ((r1, r2), remaining)
            }
            return nil
        }
    }
    
    public struct CaptureTuple3<C0: Parser, C1: Parser, C2: Parser>: Parser
    where C0.Input: Collection, C0.Input == C0.Input.SubSequence, C0.Input == C1.Input, C0.Input == C2.Input {
        public typealias Input = C0.Input
        public typealias Output = (C0.Output, C1.Output, C2.Output)
        @usableFromInline let c0: C0, c1: C1, c2: C2

        @inlinable public init(_ c0: C0, _ c1: C1, _ c2: C2) {
            self.c0 = c0
            self.c1 = c1
            self.c2 = c2
        }

        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let (r1, remaining) = try c0.parse(input),
               let (r2, remaining) = try c1.parse(remaining),
               let (r3, remaining) = try c2.parse(remaining) {
             return ((r1, r2, r3), remaining)
            }
            return nil
        }
    }
    
    public struct CaptureTuple4<C0: Parser, C1: Parser, C2: Parser, C3: Parser>: Parser
    where C0.Input: Collection, C0.Input == C0.Input.SubSequence, C0.Input == C1.Input, C0.Input == C2.Input, C0.Input == C3.Input {
        public typealias Input = C0.Input
        public typealias Output = (C0.Output, C1.Output, C2.Output, C3.Output)
        @usableFromInline let c0: C0, c1: C1, c2: C2, c3: C3

        @inlinable public init(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3) {
            self.c0 = c0
            self.c1 = c1
            self.c2 = c2
            self.c3 = c3
        }

        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let (r1, remaining) = try c0.parse(input),
               let (r2, remaining) = try c1.parse(remaining),
               let (r3, remaining) = try c2.parse(remaining),
               let (r4, remaining) = try c3.parse(remaining) {
             return ((r1, r2, r3, r4), remaining)
            }
            return nil
        }
    }
    
    public struct CaptureTuple5<C0: Parser, C1: Parser, C2: Parser, C3: Parser, C4: Parser>: Parser
    where C0.Input: Collection, C0.Input == C0.Input.SubSequence, C0.Input == C1.Input, C0.Input == C2.Input, C0.Input == C3.Input, C0.Input == C4.Input {
        public typealias Input = C0.Input
        public typealias Output = (C0.Output, C1.Output, C2.Output, C3.Output, C4.Output)
        @usableFromInline let c0: C0, c1: C1, c2: C2, c3: C3, c4: C4

        @inlinable public init(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4) {
            self.c0 = c0
            self.c1 = c1
            self.c2 = c2
            self.c3 = c3
            self.c4 = c4
        }

        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let (r1, remaining) = try c0.parse(input),
               let (r2, remaining) = try c1.parse(remaining),
               let (r3, remaining) = try c2.parse(remaining),
               let (r4, remaining) = try c3.parse(remaining),
               let (r5, remaining) = try c4.parse(remaining) {
             return ((r1, r2, r3, r4, r5), remaining)
            }
            return nil
        }
    }
    
    public struct CaptureTuple6<C0: Parser, C1: Parser, C2: Parser, C3: Parser, C4: Parser, C5: Parser>: Parser
    where C0.Input: Collection, C0.Input == C0.Input.SubSequence, C0.Input == C1.Input, C0.Input == C2.Input, C0.Input == C3.Input, C0.Input == C4.Input, C0.Input == C5.Input {
        public typealias Input = C0.Input
        public typealias Output = (C0.Output, C1.Output, C2.Output, C3.Output, C4.Output, C5.Output)
        @usableFromInline let c0: C0, c1: C1, c2: C2, c3: C3, c4: C4, c5: C5

        @inlinable public init(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5) {
            self.c0 = c0
            self.c1 = c1
            self.c2 = c2
            self.c3 = c3
            self.c4 = c4
            self.c5 = c5
        }

        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let (r1, remaining) = try c0.parse(input),
               let (r2, remaining) = try c1.parse(remaining),
               let (r3, remaining) = try c2.parse(remaining),
               let (r4, remaining) = try c3.parse(remaining),
               let (r5, remaining) = try c4.parse(remaining),
               let (r6, remaining) = try c5.parse(remaining) {
             return ((r1, r2, r3, r4, r5, r6), remaining)
            }
            return nil
        }
    }
    
    public struct CaptureTuple7<C0: Parser, C1: Parser, C2: Parser, C3: Parser, C4: Parser, C5: Parser, C6: Parser>: Parser
    where C0.Input: Collection, C0.Input == C0.Input.SubSequence, C0.Input == C1.Input, C0.Input == C2.Input, C0.Input == C3.Input, C0.Input == C4.Input, C0.Input == C5.Input, C0.Input == C6.Input {
        public typealias Input = C0.Input
        public typealias Output = (C0.Output, C1.Output, C2.Output, C3.Output, C4.Output, C5.Output, C6.Output)
        @usableFromInline let c0: C0, c1: C1, c2: C2, c3: C3, c4: C4, c5: C5, c6: C6

        @inlinable public init(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6) {
            self.c0 = c0
            self.c1 = c1
            self.c2 = c2
            self.c3 = c3
            self.c4 = c4
            self.c5 = c5
            self.c6 = c6
        }

        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let (r1, remaining) = try c0.parse(input),
               let (r2, remaining) = try c1.parse(remaining),
               let (r3, remaining) = try c2.parse(remaining),
               let (r4, remaining) = try c3.parse(remaining),
               let (r5, remaining) = try c4.parse(remaining),
               let (r6, remaining) = try c5.parse(remaining),
               let (r7, remaining) = try c6.parse(remaining) {
             return ((r1, r2, r3, r4, r5, r6, r7), remaining)
            }
            return nil
        }
    }
    
    public struct CaptureTuple8<C0: Parser, C1: Parser, C2: Parser, C3: Parser, C4: Parser, C5: Parser, C6: Parser, C7: Parser>: Parser
    where C0.Input: Collection, C0.Input == C0.Input.SubSequence, C0.Input == C1.Input, C0.Input == C2.Input, C0.Input == C3.Input, C0.Input == C4.Input, C0.Input == C5.Input, C0.Input == C6.Input, C0.Input == C7.Input {
        public typealias Input = C0.Input
        public typealias Output = (C0.Output, C1.Output, C2.Output, C3.Output, C4.Output, C5.Output, C6.Output, C7.Output)
        @usableFromInline let c0: C0, c1: C1, c2: C2, c3: C3, c4: C4, c5: C5, c6: C6, c7: C7

        @inlinable public init(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7) {
            self.c0 = c0
            self.c1 = c1
            self.c2 = c2
            self.c3 = c3
            self.c4 = c4
            self.c5 = c5
            self.c6 = c6
            self.c7 = c7
        }

        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let (r1, remaining) = try c0.parse(input),
               let (r2, remaining) = try c1.parse(remaining),
               let (r3, remaining) = try c2.parse(remaining),
               let (r4, remaining) = try c3.parse(remaining),
               let (r5, remaining) = try c4.parse(remaining),
               let (r6, remaining) = try c5.parse(remaining),
               let (r7, remaining) = try c6.parse(remaining),
               let (r8, remaining) = try c7.parse(remaining) {
             return ((r1, r2, r3, r4, r5, r6, r7, r8), remaining)
            }
            return nil
        }
    }
    
    public struct CaptureTuple9<C0: Parser, C1: Parser, C2: Parser, C3: Parser, C4: Parser, C5: Parser, C6: Parser, C7: Parser, C8: Parser>: Parser
    where C0.Input: Collection, C0.Input == C0.Input.SubSequence, C0.Input == C1.Input, C0.Input == C2.Input, C0.Input == C3.Input, C0.Input == C4.Input, C0.Input == C5.Input, C0.Input == C6.Input, C0.Input == C7.Input, C0.Input == C8.Input {
        public typealias Input = C0.Input
        public typealias Output = (C0.Output, C1.Output, C2.Output, C3.Output, C4.Output, C5.Output, C6.Output, C7.Output, C8.Output)
        @usableFromInline let c0: C0, c1: C1, c2: C2, c3: C3, c4: C4, c5: C5, c6: C6, c7: C7, c8: C8

        @inlinable public init(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8) {
            self.c0 = c0
            self.c1 = c1
            self.c2 = c2
            self.c3 = c3
            self.c4 = c4
            self.c5 = c5
            self.c6 = c6
            self.c7 = c7
            self.c8 = c8
        }

        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let (r1, remaining) = try c0.parse(input),
            let (r2, remaining) = try c1.parse(remaining),
            let (r3, remaining) = try c2.parse(remaining),
            let (r4, remaining) = try c3.parse(remaining),
            let (r5, remaining) = try c4.parse(remaining),
            let (r6, remaining) = try c5.parse(remaining),
            let (r7, remaining) = try c6.parse(remaining),
            let (r8, remaining) = try c7.parse(remaining),
            let (r9, remaining) = try c8.parse(remaining) {
            return ((r1, r2, r3, r4, r5, r6, r7, r8, r9), remaining)
            }
            return nil
        }
    }
    
    public struct CaptureTuple10<C0: Parser, C1: Parser, C2: Parser, C3: Parser, C4: Parser, C5: Parser, C6: Parser, C7: Parser, C8: Parser, C9: Parser>: Parser
    where C0.Input: Collection, C0.Input == C0.Input.SubSequence, C0.Input == C1.Input, C0.Input == C2.Input, C0.Input == C3.Input, C0.Input == C4.Input, C0.Input == C5.Input, C0.Input == C6.Input, C0.Input == C7.Input, C0.Input == C8.Input, C0.Input == C9.Input {
        public typealias Input = C0.Input
        public typealias Output = (C0.Output, C1.Output, C2.Output, C3.Output, C4.Output, C5.Output, C6.Output, C7.Output, C8.Output, C9.Output)
        @usableFromInline let c0: C0, c1: C1, c2: C2, c3: C3, c4: C4, c5: C5, c6: C6, c7: C7, c8: C8, c9: C9

        @inlinable public init(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8, _ c9: C9) {
            self.c0 = c0
            self.c1 = c1
            self.c2 = c2
            self.c3 = c3
            self.c4 = c4
            self.c5 = c5
            self.c6 = c6
            self.c7 = c7
            self.c8 = c8
            self.c9 = c9
        }

        @inlinable public func parse(_ input: Input) throws -> (Output, Input)? {
            if let (r1, remaining) = try c0.parse(input),
            let (r2, remaining) = try c1.parse(remaining),
            let (r3, remaining) = try c2.parse(remaining),
            let (r4, remaining) = try c3.parse(remaining),
            let (r5, remaining) = try c4.parse(remaining),
            let (r6, remaining) = try c5.parse(remaining),
            let (r7, remaining) = try c6.parse(remaining),
            let (r8, remaining) = try c7.parse(remaining),
            let (r9, remaining) = try c8.parse(remaining),
            let (r10, remaining) = try c9.parse(remaining) {
            return ((r1, r2, r3, r4, r5, r6, r7, r8, r9, r10), remaining)
            }
            return nil
        }
    }
    //TODO: Add more until CaptureTuple10
}
