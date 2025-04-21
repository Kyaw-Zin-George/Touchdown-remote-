//
//  Shop.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/21/25.
//

import Foundation

//allows instances of this class to be used anywhere in the project
class Shop: ObservableObject {
    //to trigger view reloads when value of these changed
    @Published var showingProducts: Bool = false
    @Published var selectedProduct: Product? = nil
}
