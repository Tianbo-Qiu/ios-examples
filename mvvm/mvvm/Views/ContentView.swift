//
//  ContentView.swift
//  mvvm
//
//  Created by Tianbo Qiu on 8/28/22.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int = 0
    @ObservedObject var booksModel = BooksModel()
    
    var body: some View {
        VStack {
            NavigationView {
                List(booksModel.books, id: \.self.id) { book in
                    NavigationLink {
                        VStack {
                            Text("author \(book.author)")
                            Text(book.name)
                        }
                    } label: {
                                Text("book: \(book.name)")
                    }

                }.navigationTitle("books")
            }
            Text("count: \(count)")
            Button("add 1") {
                count += 1
            }
            Button("add book") {
                booksModel.addRandomBook()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
