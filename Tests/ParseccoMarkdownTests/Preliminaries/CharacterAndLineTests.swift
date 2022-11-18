//
//  CharacterAndLineTests.swift
//  
//
//  Created by Aaron Vranken on 30/06/2022.
//

import XCTest
import Parsecco
import ParseccoMarkdown

final class CharacterAndLineTests: XCTestCase {
    func testLine() throws {
        let lineFeed = "lorem ipsum dolor\nremainder"
        let carriageReturn = "lorem ipsum dolor\rremainder"
        let carriageReturnLineFeed = "lorem ipsum dolor\r\nremainder"
        let lineFeedCarriageReturn = "lorem ipsum dolor\n\rremainder"
    
        XCTAssertNotNil(try line.parse(lineFeed[...]))
        XCTAssertEqual(try line.parse(lineFeed[...])?.1, "remainder")
        
        let carriageReturnResult = try line.parse(carriageReturn[...])
        XCTAssertNotNil(carriageReturnResult)
        XCTAssertEqual(carriageReturnResult?.1, "remainder")
        
        let carriageReturnLineFeedResult = try line.parse(carriageReturnLineFeed[...])
        XCTAssertNotNil(carriageReturnLineFeedResult)
        XCTAssertEqual(carriageReturnLineFeedResult?.1, "remainder")
        
        let lineFeedCarriageReturnResult = try line.parse(lineFeedCarriageReturn[...])
        XCTAssertNotNil(lineFeedCarriageReturnResult)
        XCTAssertEqual(lineFeedCarriageReturnResult?.1, "\rremainder")
    }

    func testBlankLine() throws {
        
    }

}
