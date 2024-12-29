//
//  User.swift
//  SwiftDataProject
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 29/12/24.
//

import SwiftUI
import SwiftData

@Model
class User {
    var name: String
    var city: String
    var joinDate: Date

    init(name: String, city: String, joinDate: Date) {
        self.name = name
        self.city = city
        self.joinDate = joinDate
    }
}
