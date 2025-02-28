//
//  Bingo_Vacation_GameApp.swift
//  Bingo_Vacation_Game
//
//  Created by Austin Tarrach on 2/27/25.
//

import SwiftUI
import SwiftData

@main
struct Bingo_Vacation_GameApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
