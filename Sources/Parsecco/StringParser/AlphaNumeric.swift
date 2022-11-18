//
//  AlphaNumeric.swift
//
//
//  Created by Aaron Vranken on 01/05/2022.
//

import Foundation

/**
 # Description
 Matches any Unicode number character.
 */
public let matchNumeric: Spot<Substring> = Spot { $0.isNumber }

/**
 # Description
 Matches any ASCII number character. I.e., any arabic numeral: 0, 1, 2, 3, 4, 5, 6, 7, 8 or 9.
 */
public let matchArabicNumeral: Spot<Substring> = Spot { 47 < $0.utf8.first! && $0.utf8.first! < 58 }

/**
 # Description
 Matches any Unicode letter character.
 */
public let matchAlpha: Spot<Substring> = Spot { $0.isLetter }

/**
 # Description
 Matches any Unicode letter or number character.
 */
public let matchAlphaNumeric = OneOf {
    matchAlpha
    matchNumeric
}
