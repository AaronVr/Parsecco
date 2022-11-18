//
//  TokenTests.swift
//  
//
//  Created by Aaron Vranken on 28/06/2022.
//

import XCTest
import Parsecco

final class TokenTests: XCTestCase {
    func testEmptyCollectionIsNil() throws {
        let empty: [Int] = []
        let token = Token<ArraySlice<Int>>(1)
        
        XCTAssertNil(token.parse(empty[...]))
    }
    
    func testCollectionOfOneSuccess() throws {
        let one: [Int] = [1]
        let token = Token<ArraySlice<Int>>(1)
        
        let result = token.parse(one[...])
        
        XCTAssertEqual(result?.0.count, 1)
        XCTAssertEqual(result?.0.first, 1)
        XCTAssertEqual(result?.1.count, 0)
    }
    
    func testCollectionOfOneFail() throws {
        let one: [Int] = [1]
        let token = Token<ArraySlice<Int>>(2)
            
        XCTAssertNil(token.parse(one[...]))
    }
    
    func testCollectionOfTwoSuccess() throws {
        let two: [Int] = [1, 2]
        let token = Token<ArraySlice<Int>>(1)
        
        let result = token.parse(two[...])
        
        XCTAssertEqual(result?.0.count, 1)
        XCTAssertEqual(result?.0.first, 1)
        XCTAssertEqual(result?.1.count, 1)
        XCTAssertEqual(result?.1.first, 2)
    }

    func testCollectionOfTwoFail() throws {
        let two: [Int] = [1, 2]
        let token = Token<ArraySlice<Int>>(2)
        
        XCTAssertNil(token.parse(two[...]))
    }
    
    func testTokenPerformance() throws {
        let array = Array(0..<8)
        
        let token = Parse {
            Token<ArraySlice<Int>>(0)
            Token<ArraySlice<Int>>(1)
            Token<ArraySlice<Int>>(2)
            Token<ArraySlice<Int>>(3)
            Token<ArraySlice<Int>>(4)
            Token<ArraySlice<Int>>(5)
            Token<ArraySlice<Int>>(6)
//            Token<ArraySlice<Int>>(7)
        }
        
        XCTAssertNotNil(try token.parse(array[...]))

        measure {
            for _ in 0..<100000 {
                let _ = try! token.parse(array[...])
            }
        }
    }
}
