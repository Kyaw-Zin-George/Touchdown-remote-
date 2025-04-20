//
//  FeatureTabView.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/16/25.
//

import SwiftUI

struct FeatureTabView: View {
    var body: some View {
        GeometryReader { geo in
            TabView{
                ForEach(players){ player in
                    FeatureItemView(player: player)
                        .frame(width: geo.size.width * 0.9, height: geo.size.height * 0.9)
                                       .padding(.top, 10)
                                        .padding(.horizontal, 15)
                }
            }//Tab
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        }
    }
}

#Preview {
    FeatureTabView()
}
