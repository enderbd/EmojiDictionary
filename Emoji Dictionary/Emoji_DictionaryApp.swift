//
//  Emoji_DictionaryApp.swift
//  Emoji Dictionary
//
//  Created by Maczilla on 05.12.21.
//

import SwiftUI

@main
struct Emoji_DictionaryApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                EmojiListView()
                    .tabItem {
                        Label("List", systemImage: "list.dash")
                    }
                EmojiGridView()
                    .tabItem {
                        Label("Grid", systemImage: "rectangle.grid.2x2")
                    }
            }
        }
    }
}
