//
//  ContentView.swift
//  Memorize
//
//  Created by Shawn Spears on 3/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}
struct CardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 3)
            Text("Hello, world!")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
