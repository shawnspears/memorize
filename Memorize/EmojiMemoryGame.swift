//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Shawn Spears on 3/8/22.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    static let emojis = ["🚲","🚂", "🚀", "🚁", "🚜", "🚕", "🏎", "🚑", "🚓", "🚒", "✈️", "⛵️", "🛸", "🛶", "🚌", "🏍", "🛵", "🛴", "🚗", "🚙", "🚐", "🚛", "🚚", "🛻"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
        
    @Published private var model = createMemoryGame()
        
    var cards: Array<Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}
