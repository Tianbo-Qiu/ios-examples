//
//  BookModel.swift
//  mvvm
//
//  Created by Tianbo Qiu on 8/28/22.
//

import Foundation

class BooksModel : ObservableObject {
    @Published var books = [Book]()
    
    func addRandomBook() {
        books.append(Book(name: UUID().uuidString, author: UUID().uuidString + ":author"))
    }
}
