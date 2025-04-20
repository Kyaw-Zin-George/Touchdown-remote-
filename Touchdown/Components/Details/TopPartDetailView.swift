//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/20/25.
//

import SwiftUI

struct TopPartDetailView: View {
    @State private var isAnimating: Bool = false
    var body: some View {
        HStack(alignment: .center,spacing: 5) {
            //Price
            VStack {
                Text("Price")
                    .fontWeight(.semibold)
                Text(sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35,anchor: .leading)
            }
            .offset(y: isAnimating ? -50 : -75)
            Spacer()
                //Photo
            Image(sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0: -35)
            
        }//Hstack
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)){
                isAnimating.toggle()
            }
        }
        
    }
}

#Preview (traits: .sizeThatFitsLayout){
    TopPartDetailView()
        .padding()
}
