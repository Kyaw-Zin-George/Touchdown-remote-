//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/19/25.
//

import SwiftUI

struct BrandGridView: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout,spacing: rowSpacing) {
                ForEach(brands){ brand in
                    BrandItemView(brand: brand)
                    
                }
            }.frame(height: 200)
                .padding(15)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    BrandGridView()
        .background(colorBackground)
}
