//
//  Student.swift
//  Bookworm
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 07/09/24.
//

import Foundation
import SwiftData

@Model
class Student {
    var id: UUID
    var name: String

    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
}
