//
//  ZeroOrMoreTests.swift
//
//
//  Created by Aaron Vranken on 28/06/2022.
//

import XCTest
import Parsecco

final class ZeroOrMoreTests: XCTestCase {
    func testEmptyCollection() throws {
        let array: [Int] = []
        let zeroOrMore = ZeroOrMore {
            Match([0])
        }
        
        let result = try zeroOrMore.parse(array[...])
        XCTAssertNotNil(result)
        XCTAssertEqual(result?.0.count, 0)
    }
    
    func testSingletonCollection() throws {
        let array: [Int] = [0]
        let zeroOrMore = ZeroOrMore {
            Match([0])
        }
        
        let result = try zeroOrMore.parse(array[...])
        XCTAssertNotNil(result)
        XCTAssertEqual(result?.0.count, 1)
        XCTAssertEqual(result?.0.first?.count, 1)
        XCTAssertEqual(result?.0.first?.first, 0)
    }
    
    func testCollectionOfN() throws {
        let array: [Int] = Array(repeating: 0, count: 1000)
        let zeroOrMore = ZeroOrMore {
            Match([0])
        }
        
        let result = try zeroOrMore.parse(array[...])
        XCTAssertNotNil(result)
        XCTAssertEqual(result?.0.count, 1000)
        for i in 0..<1000 {
            XCTAssertEqual(result?.0[i].count, 1)
            XCTAssertEqual(result?.0[i].first, 0)
        }
    }
    
    func testPerformanceZeroOrMore() throws {
        let array: [Int] = Array(repeating: 0, count: 10)
        let zeroOrMore = ZeroOrMore {
            Match([0])
        }
        
        measure {
            for _ in 0..<1000000 {
                let _ = try! zeroOrMore.parse(array[...])
            }
        }
    }
    
    func testPerformanceBare() throws {
        let array: [Int] = Array(repeating: 0, count: 1)
        let match = Match([0])
        
        measure {
            for _ in 0..<1000000 {
                let _ = try! match.parse(array[...])
            }
        }
    }
}
