//
//  FormView.swift
//  CupcakeCorner
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 22/08/24.
//

import SwiftUI

import SwiftUI

struct FormView: View {
    @State private var username = ""
    @State private var email = ""

    var disableForm: Bool {
        username.count < 5 || email.count < 5
    }

    var body: some View {
        Form {
            Section {
                TextField("Username", text: $username)
                TextField("Email", text: $email)
            }

            Section {
                Button("Create account") {
                    print("Creating account…")
                }
            }
            .disabled(disableForm)
        }
    }
}


#Preview {
    FormView()
}
