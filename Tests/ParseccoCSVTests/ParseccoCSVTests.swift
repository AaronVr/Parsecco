//
//  ParceboCSVTests.swift
//  
//
//  Created by Aaron Vranken on 01/07/2022.
//

import XCTest
import ParseccoCSV
import Parsecco

final class ParceboCSVTests: XCTestCase {
    func testExample() throws {
        
        let start = CFAbsoluteTimeGetCurrent()
        let result = try csv.parse(csvInput[...])
        let end = CFAbsoluteTimeGetCurrent()
        
        print(result?.0.count)
        print(end-start)
    }
    
    func testExample2() throws {
        let start = CFAbsoluteTimeGetCurrent()
        let result = csvInput
            .split(separator: "\n")
            .map { $0.split(separator: ",")
                .map { $0.trimmingCharacters(in: CharacterSet(charactersIn: "\"")) } }
        let end = CFAbsoluteTimeGetCurrent()
        

//        let result = try csv.parse(csvInput[...])
//        let end = CFAbsoluteTimeGetCurrent()
//
        print(result.count)
        print(end-start)
    }

    func testPerformanceExample() throws {
        let parser7 = Parse {
            Character("a")
            Character("a")
            Character("b")
            Character("b")
            Character("c")
            Character("c")
            Character("d")
        }
        
        
        let testString = "aabbccddeeff"

        var result = try parser7.parse(testString[...])
        let start = CFAbsoluteTimeGetCurrent()
        for _ in 0..<1000000 {
            result = try parser7.parse(testString[...])
        }
        let end = CFAbsoluteTimeGetCurrent()

        print(end-start)
        print(result)
    }

}
