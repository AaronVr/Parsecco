////
////  OneOfTests.swift
////  
////
////  Created by Aaron Vranken on 28/06/2022.
////
//
//import XCTest
//import Parcebo
//
//final class OneOfTests: XCTestCase {
//    func testOneOf1() throws {
//        let test = [0]
//        let oneOf = OneOf {
//            Match([0])
//        }
//        
//        XCTAssertNotNil(try oneOf.parse(test[...]))
//    }
//    
//    func testOneOf2() throws {
//        let test = [0]
//        let oneOf1 = OneOf {
//            Match([0])
//            Match([-1])
//        }
//        
//        let oneOf2 = OneOf {
//            Match([-1])
//            Match([0])
//        }
//        
//        XCTAssertNotNil(try oneOf1.parse(test[...]))
//        XCTAssertNotNil(try oneOf2.parse(test[...]))
//        
//    }
//    
//    func testOneOf3() throws {
//        let test = [0]
//        let oneOf1 = OneOf {
//            Match([0])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf2 = OneOf {
//            Match([-1])
//            Match([0])
//            Match([-1])
//        }
//        
//        let oneOf3 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([0])
//        }
//        
//        XCTAssertNotNil(try oneOf1.parse(test[...]))
//        XCTAssertNotNil(try oneOf2.parse(test[...]))
//        XCTAssertNotNil(try oneOf3.parse(test[...]))
//    }
//    
//    func testOneOf4() throws {
//        let test = [0]
//        let oneOf1 = OneOf {
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf2 = OneOf {
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf3 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//        }
//        
//        let oneOf4 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//        }
//        
//        XCTAssertNotNil(try oneOf1.parse(test[...]))
//        XCTAssertNotNil(try oneOf2.parse(test[...]))
//        XCTAssertNotNil(try oneOf3.parse(test[...]))
//        XCTAssertNotNil(try oneOf4.parse(test[...]))
//    }
//    
//    func testOneOf5() throws {
//        let test = [0]
//        let oneOf1 = OneOf {
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf2 = OneOf {
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf3 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf4 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//        }
//        
//        let oneOf5 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//        }
//        
//        XCTAssertNotNil(try oneOf1.parse(test[...]))
//        XCTAssertNotNil(try oneOf2.parse(test[...]))
//        XCTAssertNotNil(try oneOf3.parse(test[...]))
//        XCTAssertNotNil(try oneOf4.parse(test[...]))
//        XCTAssertNotNil(try oneOf5.parse(test[...]))
//    }
//    
//    func testOneOf6() throws {
//        let test = [0]
//        let oneOf1 = OneOf {
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf2 = OneOf {
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf3 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf4 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf5 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//        }
//        
//        let oneOf6 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//        }
//        
//        XCTAssertNotNil(try oneOf1.parse(test[...]))
//        XCTAssertNotNil(try oneOf2.parse(test[...]))
//        XCTAssertNotNil(try oneOf3.parse(test[...]))
//        XCTAssertNotNil(try oneOf4.parse(test[...]))
//        XCTAssertNotNil(try oneOf5.parse(test[...]))
//        XCTAssertNotNil(try oneOf6.parse(test[...]))
//    }
//    
//    func testOneOf7() throws {
//        let test = [0]
//        let oneOf1 = OneOf {
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf2 = OneOf {
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf3 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf4 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf5 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf6 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//        }
//        
//        let oneOf7 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//        }
//        
//        XCTAssertNotNil(try oneOf1.parse(test[...]))
//        XCTAssertNotNil(try oneOf2.parse(test[...]))
//        XCTAssertNotNil(try oneOf3.parse(test[...]))
//        XCTAssertNotNil(try oneOf4.parse(test[...]))
//        XCTAssertNotNil(try oneOf5.parse(test[...]))
//        XCTAssertNotNil(try oneOf6.parse(test[...]))
//        XCTAssertNotNil(try oneOf7.parse(test[...]))
//    }
//    
//    func testOneOf8() throws {
//        let test = [0]
//        let oneOf1 = OneOf {
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf2 = OneOf {
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf3 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf4 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf5 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf6 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf7 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//        }
//        
//        let oneOf8 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//        }
//        
//        XCTAssertNotNil(try oneOf1.parse(test[...]))
//        XCTAssertNotNil(try oneOf2.parse(test[...]))
//        XCTAssertNotNil(try oneOf3.parse(test[...]))
//        XCTAssertNotNil(try oneOf4.parse(test[...]))
//        XCTAssertNotNil(try oneOf5.parse(test[...]))
//        XCTAssertNotNil(try oneOf6.parse(test[...]))
//        XCTAssertNotNil(try oneOf7.parse(test[...]))
//        XCTAssertNotNil(try oneOf8.parse(test[...]))
//    }
//    
//    func testOneOf9() throws {
//        let test = [0]
//        let oneOf1 = OneOf {
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf2 = OneOf {
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf3 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf4 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf5 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf6 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf7 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf8 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//        }
//        
//        let oneOf9 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//        }
//        
//        XCTAssertNotNil(try oneOf1.parse(test[...]))
//        XCTAssertNotNil(try oneOf2.parse(test[...]))
//        XCTAssertNotNil(try oneOf3.parse(test[...]))
//        XCTAssertNotNil(try oneOf4.parse(test[...]))
//        XCTAssertNotNil(try oneOf5.parse(test[...]))
//        XCTAssertNotNil(try oneOf6.parse(test[...]))
//        XCTAssertNotNil(try oneOf7.parse(test[...]))
//        XCTAssertNotNil(try oneOf8.parse(test[...]))
//        XCTAssertNotNil(try oneOf9.parse(test[...]))
//    }
//    
//    func testOneOf10() throws {
//        let test = [0]
//        let oneOf1 = OneOf {
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf2 = OneOf {
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf3 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf4 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf5 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf6 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf7 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf8 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//            Match([-1])
//        }
//        
//        let oneOf9 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//            Match([-1])
//        }
//        
//        let oneOf10 = OneOf {
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([-1])
//            Match([0])
//        }
//        
//        XCTAssertNotNil(try oneOf1.parse(test[...]))
//        XCTAssertNotNil(try oneOf2.parse(test[...]))
//        XCTAssertNotNil(try oneOf3.parse(test[...]))
//        XCTAssertNotNil(try oneOf4.parse(test[...]))
//        XCTAssertNotNil(try oneOf5.parse(test[...]))
//        XCTAssertNotNil(try oneOf6.parse(test[...]))
//        XCTAssertNotNil(try oneOf7.parse(test[...]))
//        XCTAssertNotNil(try oneOf8.parse(test[...]))
//        XCTAssertNotNil(try oneOf9.parse(test[...]))
//        XCTAssertNotNil(try oneOf10.parse(test[...]))
//    }
//}
