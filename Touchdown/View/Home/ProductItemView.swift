//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/18/25.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - Properties
    let product: Product
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading,spacing: 6) {
            //Photo
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//zstack
            .background(Color(red:product.red,green: product.green,blue: product.blue))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            //Name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            //Price
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
            
        }//Vstack
    }
}

#Preview (traits: .fixedLayout(width: 200, height: 300)){
    ProductItemView(product: products[0])
}
