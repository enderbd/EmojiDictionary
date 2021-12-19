//
//  EmojiGridView.swift
//  Emoji Dictionary
//
//  Created by Maczilla on 08.12.21.
//

import SwiftUI

struct EmojiGridView: View {
    
    private var colors: [Color] = [.mint, .gray]

    let columns = [ GridItem(.flexible()),
                    GridItem(.flexible()),
                    GridItem(.flexible())]
    var body: some View {
        NavigationView {
            ScrollView {
                HStack{
                    Spacer()
                    LazyVGrid(columns: columns, spacing: 13) {
                        ForEach(emojis.indices) { index in
                            NavigationLink(destination: EmojiDetailView(emoji: emojis[index])) {
                                Text(emojis[index].symbol)
                                    .font(.system(size: 100))
                                    .background(colors[index % colors.count])
                            }
                        }
                    }
                    Spacer()
                }
            }
            .navigationTitle("Emoji Dictionary - \(emojis.count)")
        }
    }
}

struct EmojiGridView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiGridView()
    }
}
