//
//  Item.swift
//  Bingo_Vacation_Game
//
//  Created by Austin Tarrach on 2/27/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
