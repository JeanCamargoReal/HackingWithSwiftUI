//
//  PhotosPickerExample.swift
//  Instafilter
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 03/01/25.
//

import SwiftUI
import PhotosUI

struct PhotosPickerExample: View {
    @State private var pickerItem: PhotosPickerItem?
    @State private var selectedImage: Image?

    var body: some View {
        VStack {
            selectedImage?
                .resizable()
                .scaledToFit()
            PhotosPicker("Select a picture", selection: $pickerItem, matching: .images)
        }
        .onChange(of: pickerItem) {
            Task {
                selectedImage = try await pickerItem?.loadTransferable(type: Image.self)
            }
        }
    }
}

#Preview {
    PhotosPickerExample()
}
