//
//  RatingSizesDetailView.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/20/25.
//

import SwiftUI

struct RatingSizesDetailView: View {
    
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    var body: some View {
        HStack(alignment: .top) {
            //ratings
            VStack(alignment: .leading,spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                
                HStack(alignment: .center,spacing: 3) {
                    ForEach(1...5, id: \.self){ item in
                    Button(action: {}) {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28)
                                .background(colorGray.clipShape(RoundedRectangle(cornerRadius: 5)))
                                .foregroundStyle(.white)
                        }
                    }
                }
            }
            Spacer()
            //sizes
            VStack(alignment: .trailing,spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                
                HStack(alignment: .center,spacing: 3) {
                    ForEach(sizes, id: \.self){ size in
                        Button(action: {}) {
                            Text(size)
                                .font(.footnote)
                                .foregroundStyle(colorGray)
                                .frame(width: 28, height: 28)
                                .background(Color.white.clipShape(RoundedRectangle(cornerRadius: 5)))
                                .background(RoundedRectangle(cornerRadius: 5).stroke(colorGray,lineWidth: 1))
                        }
                    }
                }
            }
            
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    RatingSizesDetailView()
        .padding()
}
