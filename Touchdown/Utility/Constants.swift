//
//  Constants.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/12/25.
//

import Foundation
import SwiftUI

//Data
let players : [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let sampleProduct: Product = products[0]
//color
let colorBackground : Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray)
//layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
//ux
//api
//image
//font
//string
//misc
