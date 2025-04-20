//
//  FooterView.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/12/25.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center,spacing: 10) {
            Text("Made with ❤️ by Kyaw Thant Zin")
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundStyle(.gray)
            Text("Copyright © 2025 Touchdown. All rights reserved.")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }
    }
}

#Preview {
    FooterView()
}
