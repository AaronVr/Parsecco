//
//  BackslashEscapeTests.swift
//  
//
//  Created by Aaron Vranken on 30/06/2022.
//

import XCTest
import Parsecco
import ParseccoMarkdown

final class BackslashEscapeTests: XCTestCase {
    func testExample12() throws {
        let backslashPunctuations = "\\!\\\"\\#\\$\\%\\&\\'\\(\\)\\*\\+\\,\\-\\.\\/\\:\\;\\<\\=\\>\\?\\@\\[\\\\\\]\\^\\_\\`\\{\\|\\}\\~"
        
        let parser = ZeroOrMore {
            escapedPunctuation
        }
        
        let result = try parser.parse(backslashPunctuations[...])
        
        XCTAssertNotNil(result)
        XCTAssertEqual(result?.0.count, 32)
        XCTAssertTrue(result!.1.isEmpty)
    }
    
    func testExample13() throws {
        let backslashNonPunctuation = "\\→\\A\\a\\ \\3\\φ\\«"
        
        let parser = ZeroOrMore {
            escapedPunctuation
        }
        
        let result = try parser.parse(backslashNonPunctuation[...])
        
        XCTAssertTrue(result!.0.isEmpty)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
