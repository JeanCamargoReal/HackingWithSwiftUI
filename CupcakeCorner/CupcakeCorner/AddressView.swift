//
//  AddressView.swift
//  CupcakeCorner
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 27/08/24.
//

import SwiftUI

struct AddressView: View {
    @Bindable var order: Order

    var body: some View {
        Section {
            TextField("Name", text: $order.name)
            TextField("Street Address", text: $order.streetAddress)
            TextField("City", text: $order.city)
            TextField("Zip", text: $order.zip)
        }
        Section {
            NavigationLink("Check out") {
                CheckoutView(order: order)
            }
            .disabled(order.hasValidAddress == false)
        }
    }
}

#Preview {
    AddressView(order: Order())
}
