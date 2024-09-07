//
//  TextEditorExemple.swift
//  Bookworm
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 07/09/24.
//

import SwiftUI

struct TextEditorExemple: View {
    @AppStorage("notes") private var notes = ""

    var body: some View {
        NavigationStack {
            TextEditor(text: $notes)
                .navigationTitle("Notes")
                .padding()
        }
    }
}

#Preview {
    TextEditorExemple()
}
