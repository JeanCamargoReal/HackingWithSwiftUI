//
//  ShareLinkExample.swift
//  Instafilter
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 03/01/25.
//

import SwiftUI

struct ShareLinkExample: View {
    var body: some View {
//        ShareLink(item: URL(string: "https://www.hackingwithswift.com")!)

//        ShareLink(item: URL(string: "https://www.hackingwithswift.com")!, subject: Text("Learn Swift here"), message: Text("Check out the 100 Days of SwiftUI!"))

//        ShareLink(item: URL(string: "https://www.hackingwithswift.com")!) {
//            Label("Spread the word about Swift", systemImage: "swift")
//        }

        let example = Image(.woman)

        ShareLink(item: example, preview: SharePreview("Singapore Airport", image: example)) {
            Label("Click to share", systemImage: "airplane")
        }

    }
}

#Preview {
    ShareLinkExample()
}
