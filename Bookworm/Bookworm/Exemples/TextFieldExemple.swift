//
//  TextFieldExemple.swift
//  Bookworm
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 07/09/24.
//

import SwiftUI

struct TextFieldExemple: View {
    @AppStorage("notes") private var notes = ""

    var body: some View {
        NavigationStack {
            TextField("Enter your Text", text: $notes, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .navigationTitle("Notes")
                .padding()
        }
    }
}

#Preview {
    TextFieldExemple()
}
