//
//  GameState.swift
//  Bingo_Vacation_Game
//
//  Created by Austin Tarrach on 2/27/25.
//

import SwiftData
import Foundation

@Model
class GameState {
    @Attribute(.unique) var id: UUID
    var players: [Player]
    var bingoBoard: [BingoTask]
    var adminID: UUID? // The admin player’s ID
    
    init(id: UUID = UUID(), players: [Player] = [], bingoBoard: [BingoTask] = [], adminID: UUID? = nil) {
        self.id = id
        self.players = players
        self.bingoBoard = bingoBoard
        self.adminID = adminID
    }
}

