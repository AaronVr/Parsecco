//
//  OneOrMoreTests.swift
//
//
//  Created by Aaron Vranken on 28/06/2022.
//

import XCTest
import Parsecco

final class OneOrMoreTests: XCTestCase {
    func testEmptyCollection() throws {
        let array: [Int] = []
        let oneOrMore = OneOrMore {
            Match([0])
        }
        
        let result = try oneOrMore.parse(array[...])
        XCTAssertNil(result)
    }
    
    func testSingletonCollection() throws {
        let array: [Int] = [0]
        let oneOrMore = OneOrMore {
            Match([0])
        }
        
        let result = try oneOrMore.parse(array[...])
        XCTAssertNotNil(result)
        XCTAssertEqual(result?.0.count, 1)
        XCTAssertEqual(result?.0.first?.count, 1)
        XCTAssertEqual(result?.0.first?.first, 0)
    }
    
    func testCollectionOfN() throws {
        let array: [Int] = Array(repeating: 0, count: 1000)
        let oneOrMore = OneOrMore {
            Match([0])
        }
        
        let result = try oneOrMore.parse(array[...])
        XCTAssertNotNil(result)
        XCTAssertEqual(result?.0.count, 1000)
        for i in 0..<1000 {
            XCTAssertEqual(result?.0[i].count, 1)
            XCTAssertEqual(result?.0[i].first, 0)
        }
    }
    
    func testPerformanceOneOrMore() throws {
        let array: [Int] = Array(repeating: 0, count: 10)
        let zeroOrMore = OneOrMore {
            Match([0])
        }
        
        measure {
            for _ in 0..<1000000 {
                let _ = try! zeroOrMore.parse(array[...])
            }
        }
    }
}
