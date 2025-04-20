//
//  NavBarView.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/20/25.
//

import SwiftUI

struct NavBarDetailView: View {
    var body: some View {
        HStack{
            Button(action: {}) {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundStyle(.white)
            }
            Spacer()
            Button(action: {}) {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundStyle(.white)
                    
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    NavBarDetailView()
        .background(.gray)
}
