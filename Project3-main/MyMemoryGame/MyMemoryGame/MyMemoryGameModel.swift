//
//  MyMemoryGameModel.swift
//  MyMemoryGame
//
//  Created by Dylan Shu on 4/25/23.
//

import Foundation

class MemoryGameModel {
    
    var emojiArray = [String]()
    struct Node {
        var emoji: String
        var isMatched: Bool
    }
    
    var array = [[Node]]()
    
    init() {
        for i in 0x1F601...0x1F64F {
            let c = String(UnicodeScalar(i) ?? "-")
            emojiArray.append(c)
        }
        for row in 0..<5 {
            array.append( [] )
            for _ in 0..<4 {
                array[row].append( Node(emoji: emojiArray.randomElement() ?? "-", isMatched: false) )
            }
        }
    }
    
    
}

