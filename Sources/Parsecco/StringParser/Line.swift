//
// Line.swift
//
//
//  Created by Aaron Vranken on 20/06/2022.
//

import Foundation

public let line = Until {
    Spot<Substring> { $0.isNewline }
}
