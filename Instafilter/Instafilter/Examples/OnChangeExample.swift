//
//  OnChangeExample.swift
//  Instafilter
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 02/01/25.
//

import SwiftUI

struct OnChangeExample: View {
    @State private var blurAmount = 0.0

    var body: some View {
        VStack {
            Text("Hello, World!")
                .blur(radius: blurAmount)

            Slider(value: $blurAmount, in: 0...20)
                .onChange(of: blurAmount) { oldValue, newValue in
                    print("New value is \(newValue)")
                }
        }
    }
}

#Preview {
    OnChangeExample()
}
