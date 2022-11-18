//
//  OneOfBuildBlocks.swift
//  
//
//  Created by Aaron Vranken on 28/06/2022.
//

import Foundation

public extension OneOfBuilder {
    @inlinable static func buildBlock<P0: Parser>(_ p0: P0) -> P0 {
        return p0
    }
    
    @inlinable static func buildBlock<P0: Parser, P1: Parser>(_ p0: P0, _ p1: P1 ) -> OneOfTuple2<P0, P1> {
        OneOfBuilder.OneOfTuple2(p0, p1)
    }
    
    @inlinable static func buildBlock<P0: Parser, P1: Parser, P2: Parser>(_ p0: P0, _ p1: P1, _ p2: P2) -> OneOfTuple3<P0, P1, P2> {
        OneOfBuilder.OneOfTuple3(p0, p1, p2)
    }
    
    @inlinable static func buildBlock<P0: Parser, P1: Parser, P2: Parser, P3: Parser>(_ p0: P0, _ p1: P1, _ p2: P2, _ p3: P3) -> OneOfTuple4<P0, P1, P2, P3> {
        OneOfBuilder.OneOfTuple4(p0, p1, p2, p3)
    }
    
    @inlinable static func buildBlock<P0: Parser, P1: Parser, P2: Parser, P3: Parser, P4: Parser>(_ p0: P0, _ p1: P1, _ p2: P2, _ p3: P3, _ p4: P4) -> OneOfTuple5<P0, P1, P2, P3, P4> {
        OneOfBuilder.OneOfTuple5(p0, p1, p2, p3, p4)
    }
    
    @inlinable static func buildBlock<P0: Parser, P1: Parser, P2: Parser, P3: Parser, P4: Parser, P5: Parser>(_ p0: P0, _ p1: P1, _ p2: P2, _ p3: P3, _ p4: P4, _ p5: P5) -> OneOfTuple6<P0, P1, P2, P3, P4, P5> {
        OneOfBuilder.OneOfTuple6(p0, p1, p2, p3, p4, p5)
    }
    
    @inlinable static func buildBlock<P0: Parser, P1: Parser, P2: Parser, P3: Parser, P4: Parser, P5: Parser, P6: Parser>(_ p0: P0, _ p1: P1, _ p2: P2, _ p3: P3, _ p4: P4, _ p5: P5, _ p6: P6) -> OneOfTuple7<P0, P1, P2, P3, P4, P5, P6> {
        OneOfBuilder.OneOfTuple7(p0, p1, p2, p3, p4, p5, p6)
    }
    
    @inlinable static func buildBlock<P0: Parser, P1: Parser, P2: Parser, P3: Parser, P4: Parser, P5: Parser, P6: Parser, P7: Parser>(_ p0: P0, _ p1: P1, _ p2: P2, _ p3: P3, _ p4: P4, _ p5: P5, _ p6: P6, _ p7: P7) -> OneOfTuple8<P0, P1, P2, P3, P4, P5, P6, P7> {
        OneOfBuilder.OneOfTuple8(p0, p1, p2, p3, p4, p5, p6, p7)
    }
    
    @inlinable static func buildBlock<P0: Parser, P1: Parser, P2: Parser, P3: Parser, P4: Parser, P5: Parser, P6: Parser, P7: Parser, P8: Parser>(_ p0: P0, _ p1: P1, _ p2: P2, _ p3: P3, _ p4: P4, _ p5: P5, _ p6: P6, _ p7: P7, _ p8: P8) -> OneOfTuple9<P0, P1, P2, P3, P4, P5, P6, P7, P8> {
        OneOfBuilder.OneOfTuple9(p0, p1, p2, p3, p4, p5, p6, p7, p8)
    }
    
    @inlinable static func buildBlock<P0: Parser, P1: Parser, P2: Parser, P3: Parser, P4: Parser, P5: Parser, P6: Parser, P7: Parser, P8: Parser, P9: Parser>(_ p0: P0, _ p1: P1, _ p2: P2, _ p3: P3, _ p4: P4, _ p5: P5, _ p6: P6, _ p7: P7, _ p8: P8, _ p9: P9) -> OneOfTuple10<P0, P1, P2, P3, P4, P5, P6, P7, P8, P9> {
        OneOfBuilder.OneOfTuple10(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
    }
}
