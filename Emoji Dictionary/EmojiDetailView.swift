//
//  EmojiDetailView.swift
//  Emoji Dictionary
//
//  Created by Maczilla on 08.12.21.
//

import SwiftUI

struct EmojiDetailView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>

    var emoji: Emoji
    var body: some View {
        VStack {
            Spacer()
            Text(emoji.symbol)
                .font(.system(size: 300))
            Spacer()
            Text(emoji.definition)
            Text(String(repeating: "⭐️", count: emoji.rating))
                .font(.system(size: 50))
                .padding(.bottom)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action : {
            self.mode.wrappedValue.dismiss()
        }){
            HStack {
                Image(systemName: "arrow.left")
                Text("Back")
            }
        })
    }
}

struct EmojiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiDetailView(emoji: Emoji(id: UUID(), symbol: "🏎", definition: "Bla", rating: 5))
.previewInterfaceOrientation(.portrait)
    }
}
