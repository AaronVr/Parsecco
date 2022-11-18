////
////  MatchTests.swift
////  
////
////  Created by Aaron Vranken on 28/06/2022.
////
//
//import XCTest
//import Parcebo
//
//final class MatchTests: XCTestCase {
//    func testEmptyCollectionFail() throws {
//        let array: [Int] = []
//        let match = Match([1])
//        
//        XCTAssertNil(match.parse(array[...]))
//    }
//    
//    func testEmptyCollectionSuccess() throws {
//        let array: [Int] = []
//        let match = Match<ArraySlice<Int>>([])
//        
//        XCTAssertNotNil(match.parse(array[...]))
//    }
//    
//    func testCollectionOfOneSuccess() throws {
//        let array = [0]
//        let match = Match([0])
//        
//        let result = match.parse(array[...])
//        
//        XCTAssertNotNil(result)
//        XCTAssertEqual(result?.0.count, 1)
//        XCTAssertEqual(result?.0.first, 0)
//        XCTAssertEqual(result?.1.count, 0)
//    }
//    
//    func testCollectionOfOneFail() throws {
//        let array: [Int] = [1]
//        let match = Match([2])
//            
//        XCTAssertNil(match.parse(array[...]))
//    }
//
//    func testCollectionOfTwoSuccess() throws {
//        let array: [Int] = [1, 2]
//        let match = Match([1])
//        
//        let result = match.parse(array[...])
//        
//        XCTAssertEqual(result?.0.count, 1)
//        XCTAssertEqual(result?.0.first, 1)
//        XCTAssertEqual(result?.1.count, 1)
//        XCTAssertEqual(result?.1.first, 2)
//    }
//
//    func testCollectionOfTwoFail() throws {
//        let array: [Int] = [1, 2]
//        let match = Match([2])
//        
//        XCTAssertNil(match.parse(array[...]))
//    }
//
//    func testMatchPerformance() throws {
//        let array = Array(0..<8)
//        
//        let match = Parse {
//            Match([0])
//            Match([1])
//            Match([2])
//            Match([3])
//            Match([4])
//            Match([5])
//            Match([6])
//            Match([7])
//        }
//        
//        XCTAssertNotNil(try match.parse(array[...]))
//
//        measure {
//            for _ in 0..<100000 {
//                let _ = try! match.parse(array[...])
//            }
//        }
//    }
//
//}
