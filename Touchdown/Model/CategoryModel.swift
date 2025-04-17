//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/17/25.
//

import Foundation

struct Category: Codable, Identifiable{
    let id : Int
    let name: String
    let image: String
}
