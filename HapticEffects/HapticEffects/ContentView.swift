//
//  ContentView.swift
//  HapticEffects
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 22/08/24.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0

    var body: some View {
        Button("Tap Count: \(counter)") {
            counter += 1
        }
//        .sensoryFeedback(.increase, trigger: counter)
//        .sensoryFeedback(.impact(flexibility: .solid, intensity: 0.9), trigger: counter)
        .sensoryFeedback(.impact(weight: .heavy, intensity: 1), trigger: counter)
    }
}

#Preview {
    ContentView()
}
