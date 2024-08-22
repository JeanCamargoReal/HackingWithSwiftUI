//
//  ObservableConformance.swift
//  CupcakeCorner
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 22/08/24.
//

import SwiftUI

struct ObservableConformance: View {
    var body: some View {
        Button("Encode Taylor", action: encodeTaylor)
    }

    func encodeTaylor() {
        let data = try! JSONEncoder().encode(User())
        let str = String(decoding: data, as: UTF8.self)

        print(str)
    }
}

@Observable
class User: Codable {
    enum CodingKeys: String, CodingKey {
        case _name = "name"
    }

    var name = "Taylor"
}

#Preview {
    ObservableConformance()
}
