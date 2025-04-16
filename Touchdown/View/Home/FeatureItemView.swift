//
//  FeatureItemView.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/16/25.
//

import SwiftUI

struct FeatureItemView: View {
    //MARK: - Property
    let player: Player
    //MARK: - Body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    FeatureItemView(player: players[2])
        .padding()
}
