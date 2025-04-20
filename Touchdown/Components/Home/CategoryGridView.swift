//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/17/25.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            LazyHGrid(rows: gridLayout,alignment: .center, spacing: columnSpacing,pinnedViews: []) {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }//loop
            }//grid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical,10)
        }//scroll
    }
}

#Preview {
    CategoryGridView()
        .padding()
}
