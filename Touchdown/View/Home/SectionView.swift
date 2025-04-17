//
//  SectionView.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/17/25.
//

import SwiftUI

struct SectionView: View {
    @State  var rotateClockwise: Bool
    var body: some View {
        VStack(spacing: 0){
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            Spacer()
        }
        .background(colorGray.clipShape(RoundedRectangle(cornerRadius: 12)))
    }
}

#Preview {
    SectionView(rotateClockwise: true)
        .padding()
        .background(colorBackground)
}
