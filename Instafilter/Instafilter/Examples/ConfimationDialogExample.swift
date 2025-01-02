//
//  ConfimationDialogExample.swift
//  Instafilter
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 02/01/25.
//

import SwiftUI

struct ConfimationDialogExample: View {
    @State private var showingConfirmation = false
    @State private var backgroundColor = Color.white

    var body: some View {
        Button("Hello, World") {
            showingConfirmation = true
        }
        .frame(width: 300, height: 300)
        .background(backgroundColor)
        .confirmationDialog("Change background", isPresented: $showingConfirmation) {
            Button("red") { backgroundColor = .red }
            Button("green") { backgroundColor = .green }
            Button("blue") { backgroundColor = .blue }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Select a new color")
        }
    }

}

#Preview {
    ConfimationDialogExample()
}
