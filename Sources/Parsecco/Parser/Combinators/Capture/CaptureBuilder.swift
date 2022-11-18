//
//  CaptureBuilder.swift
//  
//
//  Created by Aaron Vranken on 01/07/2022.
//

import Foundation

@resultBuilder
public enum CaptureBuilder {}

public extension CaptureBuilder {
    @inlinable static func buildBlock<P0: ParserConvertible>(_ p0: P0) -> P0.ParserType {
        p0.asParser
    }
    
    @inlinable static func buildBlock<P0: ParserConvertible, P1: ParserConvertible>(_ p0: P0, _ p1: P1 ) -> CaptureTuple2<P0.ParserType, P1.ParserType> {
        CaptureTuple2(p0.asParser, p1.asParser)
    }
    
    @inlinable static func buildBlock<P0: ParserConvertible, P1: ParserConvertible, P2: ParserConvertible>(_ p0: P0, _ p1: P1, _ p2: P2) -> CaptureTuple3<P0.ParserType, P1.ParserType, P2.ParserType> {
        CaptureTuple3(p0.asParser, p1.asParser, p2.asParser)
    }
    
    @inlinable static func buildBlock<P0: ParserConvertible, P1: ParserConvertible, P2: ParserConvertible, P3: ParserConvertible>(_ p0: P0, _ p1: P1, _ p2: P2, _ p3: P3) -> CaptureTuple4<P0.ParserType, P1.ParserType, P2.ParserType, P3.ParserType> {
        CaptureTuple4(p0.asParser, p1.asParser, p2.asParser, p3.asParser)
    }
    
    @inlinable static func buildBlock<P0: ParserConvertible, P1: ParserConvertible, P2: ParserConvertible, P3: ParserConvertible, P4: ParserConvertible>(_ p0: P0, _ p1: P1, _ p2: P2, _ p3: P3, _ p4: P4) -> CaptureTuple5<P0.ParserType, P1.ParserType, P2.ParserType, P3.ParserType, P4.ParserType> {
        CaptureTuple5(p0.asParser, p1.asParser, p2.asParser, p3.asParser, p4.asParser)
    }
    
    @inlinable static func buildBlock<P0: ParserConvertible, P1: ParserConvertible, P2: ParserConvertible, P3: ParserConvertible, P4: ParserConvertible, P5: ParserConvertible>(_ p0: P0, _ p1: P1, _ p2: P2, _ p3: P3, _ p4: P4, _ p5: P5) -> CaptureTuple6<P0.ParserType, P1.ParserType, P2.ParserType, P3.ParserType, P4.ParserType, P5.ParserType> {
        CaptureTuple6(p0.asParser, p1.asParser, p2.asParser, p3.asParser, p4.asParser, p5.asParser)
    }
    
    @inlinable static func buildBlock<P0: ParserConvertible, P1: ParserConvertible, P2: ParserConvertible, P3: ParserConvertible, P4: ParserConvertible, P5: ParserConvertible, P6: ParserConvertible>(_ p0: P0, _ p1: P1, _ p2: P2, _ p3: P3, _ p4: P4, _ p5: P5, _ p6: P6) -> CaptureTuple7<P0.ParserType, P1.ParserType, P2.ParserType, P3.ParserType, P4.ParserType, P5.ParserType, P6.ParserType> {
        CaptureTuple7(p0.asParser, p1.asParser, p2.asParser, p3.asParser, p4.asParser, p5.asParser, p6.asParser)
    }
    
    @inlinable static func buildBlock<P0: ParserConvertible, P1: ParserConvertible, P2: ParserConvertible, P3: ParserConvertible, P4: ParserConvertible, P5: ParserConvertible, P6: ParserConvertible, P7: ParserConvertible>(_ p0: P0, _ p1: P1, _ p2: P2, _ p3: P3, _ p4: P4, _ p5: P5, _ p6: P6, _ p7: P7) -> CaptureTuple8<P0.ParserType, P1.ParserType, P2.ParserType, P3.ParserType, P4.ParserType, P5.ParserType, P6.ParserType, P7.ParserType> {
        CaptureTuple8(p0.asParser, p1.asParser, p2.asParser, p3.asParser, p4.asParser, p5.asParser, p6.asParser, p7.asParser)
    }
    
    @inlinable static func buildBlock<P0: ParserConvertible, P1: ParserConvertible, P2: ParserConvertible, P3: ParserConvertible, P4: ParserConvertible, P5: ParserConvertible, P6: ParserConvertible, P7: ParserConvertible, P8: ParserConvertible>(_ p0: P0, _ p1: P1, _ p2: P2, _ p3: P3, _ p4: P4, _ p5: P5, _ p6: P6, _ p7: P7, _ p8: P8) -> CaptureTuple9<P0.ParserType, P1.ParserType, P2.ParserType, P3.ParserType, P4.ParserType, P5.ParserType, P6.ParserType, P7.ParserType, P8.ParserType> {
        CaptureTuple9(p0.asParser, p1.asParser, p2.asParser, p3.asParser, p4.asParser, p5.asParser, p6.asParser, p7.asParser, p8.asParser)
    }

    @inlinable static func buildBlock<P0: ParserConvertible, P1: ParserConvertible, P2: ParserConvertible, P3: ParserConvertible, P4: ParserConvertible, P5: ParserConvertible, P6: ParserConvertible, P7: ParserConvertible, P8: ParserConvertible, P9: ParserConvertible>(_ p0: P0, _ p1: P1, _ p2: P2, _ p3: P3, _ p4: P4, _ p5: P5, _ p6: P6, _ p7: P7, _ p8: P8, _ p9: P9) -> CaptureTuple10<P0.ParserType, P1.ParserType, P2.ParserType, P3.ParserType, P4.ParserType, P5.ParserType, P6.ParserType, P7.ParserType, P8.ParserType, P9.ParserType> {
        CaptureTuple10(p0.asParser, p1.asParser, p2.asParser, p3.asParser, p4.asParser, p5.asParser, p6.asParser, p7.asParser, p8.asParser, p9.asParser)
    }
}
