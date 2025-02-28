//
//  BingoTask.swift
//  Bingo_Vacation_Game
//
//  Created by Austin Tarrach on 2/27/25.
//

import SwiftData
import Foundation

@Model
class BingoTask {
    @Attribute(.unique) var id: UUID
    var title: String
    var desc: String
    var isCompleted: Bool
    var timestamp: Date?
    var writeup: String?
    
    init(id: UUID = UUID(), title: String, description: String, isCompleted: Bool = false, timestamp: Date? = nil, writeup: String? = nil) {
        self.id = id
        self.title = title
        self.desc = description
        self.isCompleted = isCompleted
        self.timestamp = timestamp
        self.writeup = writeup
    }
}
