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

var emojis: [Emoji] = [Emoji(id: UUID(), symbol: "๐", definition: "Monkey no see", rating: 1),
                       Emoji(id: UUID(), symbol: "๐คช", definition: "Diagonal look", rating: 2),
                       Emoji(id: UUID(), symbol: "๐คฆโโ๏ธ", definition: "The face palm", rating: 3),
                       Emoji(id: UUID(), symbol: "๐", definition: "Swift race car", rating: 5),
                       Emoji(id: UUID(), symbol: "๐", definition: "Monkey no see", rating: 1),
                       Emoji(id: UUID(), symbol: "๐", definition: "Whistle", rating: 2),
                       Emoji(id: UUID(), symbol: "๐คจ", definition: "Thin Mouth", rating: 3),
                       Emoji(id: UUID(), symbol: "๐คฎ", definition: "Le Puke", rating: 5)]

