//
//  SwiftDataProjectApp.swift
//  SwiftDataProject
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 27/10/24.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
