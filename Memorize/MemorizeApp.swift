//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Shawn Spears on 3/6/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
