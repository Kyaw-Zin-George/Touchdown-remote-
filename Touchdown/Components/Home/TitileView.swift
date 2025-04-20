//
//  TitileView.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/18/25.
//

import SwiftUI

struct TitileView: View {
    //MARK: - Properties
    var title: String
    //MARK: - Body
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }//hstack
        .padding(.horizontal)
        .padding(.top,15)
        .padding(.bottom,10)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    TitileView(title: "Groceries")
        
}
