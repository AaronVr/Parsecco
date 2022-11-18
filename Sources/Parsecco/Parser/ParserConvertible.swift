//
//  ParserConvertible.swift
//  
//
//  Created by Aaron Vranken on 28/06/2022.
//

import Foundation

public protocol ParserConvertible {
    associatedtype ParserType: Parser
    
    var asParser: ParserType { get }
}
