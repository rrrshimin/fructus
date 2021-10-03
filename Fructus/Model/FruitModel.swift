//
//  FruitModel.swift
//  Fructus
//
//  Created by Roman Shimin on 10/3/21.
//

import SwiftUI

// MARK: - Fruits data model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
    
}
