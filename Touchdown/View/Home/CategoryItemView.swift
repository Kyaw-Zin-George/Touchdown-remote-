//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/17/25.
//

import SwiftUI

struct CategoryItemView: View {
    //MARK: - Properties
    let category: Category
    //MARK: - Body
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center,spacing: 6){
                Image(category.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30,alignment: .center)
                    .foregroundStyle(.gray)
                Text(category.name.uppercased())
                    .font(.title2)
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
                Spacer()
            }//hstack
            .padding()
            .background(Color.white.clipShape(RoundedRectangle(cornerRadius: 12)))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        })//button
    }
}

#Preview {
    CategoryItemView(category: categories[0])
        .padding()
}
