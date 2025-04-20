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
                .zIndex(1)
            //Detail bottom bart
            VStack(alignment: .center,spacing: 0) {
               
                // ratings sizes
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                //description
                ScrollView(.vertical,showsIndicators: false){
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                }
                //quantity favorite
                QuantityFavoriteDetailView()
                    .padding(.vertical,10)
                //add to cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
            }//Vstack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
                    .ignoresSafeArea(.all,edges: .bottom)
            )
            Spacer()
        }//Vstack
        .zIndex(0)
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
