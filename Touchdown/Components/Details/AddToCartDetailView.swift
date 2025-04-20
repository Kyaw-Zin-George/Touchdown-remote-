//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/21/25.
//

import SwiftUI

struct AddToCartDetailView: View {
    @State private var isPressed: Bool = false
    var body: some View {
        Button(action:{}){
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2,design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
        }
        .padding(15)
        .background(Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue))
        .clipShape(Capsule())
        .contentShape(Capsule())
        .scaleEffect(isPressed ? 0.95 : 1)
        .animation(.easeOut(duration: 0.75),value: isPressed)
    }
}

#Preview (traits: .sizeThatFitsLayout){
    AddToCartDetailView()
        .padding()
}
