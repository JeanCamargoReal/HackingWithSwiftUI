//
//  PhotosPickerExample2.swift
//  Instafilter
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 03/01/25.
//

// Load many photos

import SwiftUI
import PhotosUI

struct PhotosPickerExample2: View {
    @State private var pickerItems = [PhotosPickerItem]()
    @State private var selectedImages = [Image]()


    var body: some View {
        VStack {
            ScrollView {
                ForEach(0 ..< selectedImages.count, id: \.self) { i in
                    selectedImages[i]
                        .resizable()
                        .scaledToFit()
                }
            }
            PhotosPicker("Select images", selection: $pickerItems, maxSelectionCount: 3, matching: .any(of: [.images, .not(.screenshots)]))

        }
        .onChange(of: pickerItems) {
            Task {
                selectedImages.removeAll()

                for item in pickerItems {
                    if let loadedImage = try await item.loadTransferable(type: Image.self) {
                        selectedImages.append(loadedImage)
                    }
                }
            }
        }
    }
}

#Preview {
    PhotosPickerExample2()
}
