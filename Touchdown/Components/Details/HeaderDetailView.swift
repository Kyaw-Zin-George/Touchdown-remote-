//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/20/25.
//

import SwiftUI

struct HeaderDetailView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        VStack(alignment: .leading,spacing: 6) {
            Text("Protective Gear")
                .font(.headline)
                .fontWeight(.bold)
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }
        
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    HeaderDetailView()
        .environmentObject(Shop())
}
