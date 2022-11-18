//
//  ParseTests.swift
//  
//
//  Created by Aaron Vranken on 29/06/2022.
//

import XCTest
import Parsecco

final class ParseTests: XCTestCase {
    func testPerformanceParseVVVVV() throws {
        let array: [Int] = Array(repeating: 0, count: 5)
        let match = Parse {
            Match(ArraySlice<Int>([0]))
            Match(ArraySlice<Int>([0]))
            Match(ArraySlice<Int>([0]))
            Match(ArraySlice<Int>([0]))
            Match(ArraySlice<Int>([0]))
        }
        
        measure {
            for _ in 0..<100000000 {
                let _ = try! match.parse(array[...])
            }
        }
    }
    
    func testPerformanceParseVVVV() throws {
        let array: [Int] = Array(repeating: 0, count: 4)
        let match = Parse {
            Match(ArraySlice<Int>([0]))
            Match(ArraySlice<Int>([0]))
            Match(ArraySlice<Int>([0]))
            Match(ArraySlice<Int>([0]))
        }
        
        measure {
            for _ in 0..<100000000 {
                let _ = try! match.parse(array[...])
            }
        }
    }
    
    func testPerformanceParseVVV() throws {
        let array: [Int] = Array(repeating: 0, count: 3)
        let match = Parse {
            Match(ArraySlice<Int>([0]))
            Match(ArraySlice<Int>([0]))
            Match(ArraySlice<Int>([0]))
        }
        
        var result: (ArraySlice<Int>, ArraySlice<Int>)? = nil
        
        measure {
            for _ in 0..<100000000 {
                result = try! match.parse(array[...])
            }
        }
        
        print(result)
    }
    
    func testPerformanceParseVV() throws {
        let array: [Int] = Array(repeating: 0, count: 2)
        let match = Parse {
            Match(ArraySlice<Int>([0]))
            Match(ArraySlice<Int>([0]))
        }
        var result: (ArraySlice<Int>, ArraySlice<Int>)? = nil
        
        measure {
            for _ in 0..<100000000 {
                result = try! match.parse(array[...])
            }
        }
        
        print(result)
    }
    
    
    func testPerformanceParseV() throws {
        let array: [Int] = Array(repeating: 0, count: 1)
        let match = Parse {
            Match(ArraySlice<Int>([0]))
        }

        var result: (ArraySlice<Int>, ArraySlice<Int>)? = nil
        
//        measure {
//            for _ in 0..<100000000 {
//                result = try! match.parse(array[...])
//            }
//        }
        
        let start = CFAbsoluteTimeGetCurrent()
        for _ in 0..<100000000 {
            result = try! match.parse(array[...])
        }
        let end = CFAbsoluteTimeGetCurrent()

        print(end-start)
    }
    
    func testPerformanceBare() throws {
        let array: [Int] = Array(repeating: 0, count: 1)
        let match = Match(ArraySlice<Int>([0]))
        
        var result: (ArraySlice<Int>, ArraySlice<Int>)? = nil
        
        measure {
            for _ in 0..<100000000 {
                result = try! match.parse(array[...])
            }
        }
        
        print(result)
    }
    
    func testPerformanceComparison() throws {
//        let array: [Int] = Array(repeating: 0, count: 10)
//        let zeroOrMore = ZeroOrMore {
//            Parse {
//                Match([0])
//                Match([0])
//                Match([0])
//                Match([0])
//            }
//        }
//
//        var result: ([ArraySlice<Int>], ArraySlice<Int>)? = nil
//        let start = CFAbsoluteTimeGetCurrent()
//        for _ in 0..<10000000 {
//            result = try! zeroOrMore.parse(array[...])
//        }
//        let end = CFAbsoluteTimeGetCurrent()
//        print(end-start)
        
        let array: [Int] = [0,0,0,0,0,0,0,0,0,0]
        let parser = Parse {
            Match([0])
            Match([0])
            Match([0])
            Match([0])
        }

        var result: (ArraySlice<Int>, ArraySlice<Int>)? = nil
        let start = CFAbsoluteTimeGetCurrent()
        for _ in 0..<10000000 {
            result = try! parser.parse(array[...])
        }
        let end = CFAbsoluteTimeGetCurrent()
        print(end-start)
        print(result)
    }
}
