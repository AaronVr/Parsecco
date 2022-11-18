////
////  CaptureTests.swift
////  
////
////  Created by Aaron Vranken on 28/06/2022.
////
//
//import XCTest
//import Parcebo
//
//final class CaptureTests: XCTestCase {
//    func testExample() throws {
//        let reference = Reference(Character.self)
//        
//        let parser = Parse {
//            Capture(as: reference) {
//                Match("hoed")
//            } transform: {
//                $0.first!
//            }
//        }
//
//        let hoed = "hoed"
//        let result = try parser.parse(hoed[...])
//        print(result)
//
//        measure {
//            for _ in 0..<100000 {
//                let _ = try! parser.parse(hoed[...])
//            }
//        }
//    }
//}
