//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 31/08/24.
//

import SwiftUI
import SwiftData

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Book.self)
    }
}
