//
//  Card.swift
//  ConcentrationGame
//
//  Created by Iraniya Naynesh on 24/12/17.
//  Copyright © 2017 iraniya. All rights reserved.
//

import Foundation

struct Card:Hashable {
    
    var hashValue: Int {
        return identifier
    }
    
    static func == (lhs:Card, rhs:Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
