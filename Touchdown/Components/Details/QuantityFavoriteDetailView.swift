//
//  QuantityFavoriteDetailView.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/20/25.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
    @State private var counter: Int = 0
    var body: some View {
        HStack(alignment: .center,spacing: 3) {
            Button(action: {
                if counter > 0{
                    feedback.impactOccurred()
                    counter -= 1
                }
            }) {
                Image(systemName: "minus.circle")
                    
            }
            Text("\(counter)")
                .fontWeight(.bold)
                .frame(minWidth: 36)
            Button(action: {
                if counter < 100{
                    feedback.impactOccurred()
                    counter += 1
                }
            }) {
                Image(systemName: "plus.circle")
            }
            Spacer()
            
            Button(action: { feedback.impactOccurred()}) {
                Image(systemName: "heart")
                    .foregroundStyle(.pink)
            }
        }.font(.system(.title, design: .rounded))
            .foregroundStyle(.black)
            .imageScale(.large)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    QuantityFavoriteDetailView()
        .padding()
}
