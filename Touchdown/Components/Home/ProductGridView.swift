//
//  ProductGridView.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/19/25.
//

import SwiftUI

struct ProductGridView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        LazyVGrid(columns: gridLayout,spacing: 15) {
            ForEach(products){ product in
                ProductItemView(product: product)
                    .onTapGesture {
                        feedback.impactOccurred()
                        withAnimation(.easeOut) {
                            shop.selectedProduct = product
                            shop.showingProducts = true
                        }
                    }
            }
        }
        .padding(15)
    }
}

#Preview {
    ProductGridView()
        .environmentObject(Shop())
}
