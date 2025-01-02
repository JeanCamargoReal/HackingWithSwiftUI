//
//  ContentUnavailableViewExemple.swift
//  Instafilter
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 02/01/25.
//

import SwiftUI

struct ContentUnavailableViewExemple: View {
    var body: some View {
//        ContentUnavailableView("No snippets",
//                               systemImage: "swift",
//                               description: Text("You don't have any snippets yet."))
        ContentUnavailableView {
            Label("No snippets", systemImage: "swift")
        } description: {
            Text("You don't have any saved snippets yet.")
        } actions: {
            Button("Create Snippet") {
                // create a snippet
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentUnavailableViewExemple()
}
