//
//  ProductGridView.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/19/25.
//

import SwiftUI

struct ProductGridView: View {
    var body: some View {
        LazyVGrid(columns: gridLayout,spacing: 15) {
            ForEach(products){ product in
                ProductItemView(product: product)
            }
        }
        .padding(15)
    }
}

#Preview {
    ProductGridView()
}
