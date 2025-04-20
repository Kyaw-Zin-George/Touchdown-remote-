//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/20/25.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        
        VStack(alignment: .leading,spacing: 5) {
            //NavBar
            NavBarDetailView()
                .padding(.horizontal)
                .padding(.top)
            //Header
            HeaderDetailView()
                .padding(.horizontal)
            //Detail Top part
            TopPartDetailView()
                .padding(.horizontal)
            //Detail bottom bart
            // ratings sizes
            //description
            //quantity favorite
            //add to cart
            Spacer()
        }//Vstack
        .ignoresSafeArea()
        .background(
            Color(
                red: sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.blue)
        ).ignoresSafeArea(.all,edges: .all)
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 812)) {
    ProductDetailView()
}
