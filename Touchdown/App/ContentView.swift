//
//  ContentView.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/10/25.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    //MARK: - body
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                if shop.showingProducts == false && shop.selectedProduct == nil {
                    VStack (spacing: 0){
                        //Navigation bar
                        NavigationBarView()
                            .padding(.horizontal, 15)
                            .padding(.bottom)
                            .background(Color.white)
                            .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                        
                        ScrollView(.vertical,showsIndicators: false, content: {
                            
                            VStack(spacing: 0){
                                FeatureTabView()
                                    .frame(width: geo.size.width * 0.9,height: 200)
                                    .padding(.vertical)
                                CategoryGridView()
                                
                                TitileView(title: "Helment")
                                
                                ProductGridView()
                                
                                TitileView(title: "Brands")
                                
                                BrandGridView()
                                
                                FooterView()
                                    .padding(.horizontal)
                            }//vstack
                        })//scroll view
                        
                        
                    }
                    .background(colorBackground.ignoresSafeArea(.all, edges: .all))
                } else {
                    ProductDetailView()
                }
            }
            //.ignoresSafeArea(.all,edges: .top)
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(Shop())
}


