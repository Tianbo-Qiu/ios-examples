//
//  Book.swift
//  mvvm
//
//  Created by Tianbo Qiu on 8/28/22.
//

import Foundation

struct Book : Identifiable {
    var id = UUID()
    var name: String
    var author: String
}
