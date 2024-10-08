//
//  URLSession.swift
//  CupcakeCorner
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 22/08/24.
//


import SwiftUI

struct URLSessionExemple: View {
    @State private var results = [Result]()

    var body: some View {
        //        AsyncImage(url: URL(string: "https://hws.dev/img/logo.png")) { image in
        //            image
        //                .resizable()
        //                .scaledToFit()
        //        } placeholder: {
        //            ProgressView()
        //        }
        //        .frame(width: 200, height: 200)

        AsyncImage(url: URL(string: "https://hws.dev/img/bad.png")) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
            } else if phase.error != nil {
                Text("There was an error loading the image.")
            } else {
                ProgressView()
            }
        }
        .frame(width: 200, height: 200)


        List(results, id: \.trackId) { item in
            VStack(alignment: .leading) {
                Text(item.trackName)
                    .font(.headline)
                Text(item.collectionName)
            }
        }
        .task {
            await loadData()
        }
    }

    // MARK: - Service
    func loadData() async {
        guard let url = URL(string: "https://itunes.apple.com/search?term=taylor+swift&entity=song") else {
            print("Invalid URL")

            return
        }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)

            if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                results = decodedResponse.results
            }

        } catch {
            print("Invalid data")
        }
    }
}

// MARK: - Model
struct Response: Codable {
    var results: [Result]
}

struct Result: Codable {
    var trackId: Int
    var trackName: String
    var collectionName: String
}

#Preview {
    URLSessionExemple()
}
