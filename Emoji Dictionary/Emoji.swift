//
//  Emoji.swift
//  Emoji Dictionary
//
//  Created by Maczilla on 08.12.21.
//
import Foundation

struct Emoji:Identifiable {
    var id: UUID
    var symbol: String
    var definition: String
    var rating: Int
}

var emojis: [Emoji] = [Emoji(id: UUID(), symbol: "🙈", definition: "Monkey no see", rating: 1),
                       Emoji(id: UUID(), symbol: "🤪", definition: "Diagonal look", rating: 2),
                       Emoji(id: UUID(), symbol: "🤦‍♂️", definition: "The face palm", rating: 3),
                       Emoji(id: UUID(), symbol: "🏎", definition: "Swift race car", rating: 5),
                       Emoji(id: UUID(), symbol: "🙈", definition: "Monkey no see", rating: 1),
                       Emoji(id: UUID(), symbol: "😗", definition: "Whistle", rating: 2),
                       Emoji(id: UUID(), symbol: "🤨", definition: "Thin Mouth", rating: 3),
                       Emoji(id: UUID(), symbol: "🤮", definition: "Le Puke", rating: 5)]

