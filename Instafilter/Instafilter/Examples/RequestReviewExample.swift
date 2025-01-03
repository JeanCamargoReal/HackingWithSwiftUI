//
//  RequestReviewExample.swift
//  Instafilter
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 03/01/25.
//

import SwiftUI
import StoreKit

struct RequestReviewExample: View {
    @Environment(\.requestReview) var requestReview

    var body: some View {
        Button("Leave a review") {
            requestReview()
        }
    }
}

#Preview {
    RequestReviewExample()
}
