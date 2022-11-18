//
//  Reference.swift
//  
//
//  Created by Aaron Vranken on 28/06/2022.
//

import Foundation

public class Reference<Capture> {
    public var value: Capture?
    
    @inlinable public init(_ type: Capture.Type) {}
}
