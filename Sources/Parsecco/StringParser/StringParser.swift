//
//  StringParser.swift
//  
//
//  Created by Aaron Vranken on 28/06/2022.
//

import Foundation

extension Parser where Input == Substring {
    @inlinable public func parse(_ input: String) throws -> Output? {
        try parse(Substring(input)).map { value, _ in value }
    }
}
