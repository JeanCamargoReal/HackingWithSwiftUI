//
//  Book.swift
//  Bookworm
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 07/09/24.
//

import Foundation
import SwiftData

@Model
class Book {
    var title: String
    var author: String
    var genre: String
    var review: String
    var rating: String

    init(title: String, author: String, genre: String, review: String, rating: String) {
        self.title = title
        self.author = author
        self.genre = genre
        self.review = review
        self.rating = rating
    }
}
