//
//  Player.swift
//  Bingo_Vacation_Game
//
//  Created by Austin Tarrach on 2/27/25.
//

import SwiftData
import Foundation

@Model
class Player {
    @Attribute(.unique) var id: UUID
    var name: String
    var completedTasks: [BingoTask]
    var lastSync: Date?
    
    init(id: UUID = UUID(), name: String, completedTasks: [BingoTask] = [], lastSync: Date? = nil) {
        self.id = id
        self.name = name
        self.completedTasks = completedTasks
        self.lastSync = lastSync
    }
}

