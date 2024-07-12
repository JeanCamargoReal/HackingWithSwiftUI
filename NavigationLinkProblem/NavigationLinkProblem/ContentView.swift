//
//  ContentView.swift
//  NavigationLinkProblem
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 03/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                NavigationLink("Select \(i)", value: i)
            }
            .navigationDestination(for: Int.self) { selection in
                Text("You selected \(selection)")
            }
        }
    }
}

struct DetailView: View {
    var number: Int

    var body: some View {
        Text("Detail View \(number)")
    }

    init(number: Int) {
        self.number = number
        print("Creating detail view \(number)")
    }
}

struct Student: Hashable {
    var id = UUID()
    var name: String
    var age: Int
}

#Preview {
    ContentView()
}
