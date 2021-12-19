//
//  ContentView.swift
//  Emoji Dictionary
//
//  Created by Maczilla on 05.12.21.
//

import SwiftUI

struct EmojiListView: View {
    var body: some View {
        NavigationView {
            /*
            List(emojis) { listedEmoji in
                NavigationLink(destination: EmojiDetailView(emoji: listedEmoji)) {
                    Text("\(listedEmoji.symbol) - \(listedEmoji.definition)")
                }
            }*/
            List {
                ForEach(emojis.indices) { index in
                    NavigationLink(destination: EmojiDetailView(emoji: emojis[index])) {
                        Text("\(emojis[index].symbol) - \(emojis[index].definition)")
                    }
                    .listRowBackground((index  % 2 == 0) ? Color(.systemMint) : Color(.systemGray))
                }
            }
            .navigationTitle("Emoji Dictionary - \(emojis.count)")
        }
    }
}


struct EmojiListView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiListView()
    }
}
