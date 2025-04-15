//
//  ContentView.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/10/25.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    
    //MARK: - body
    
    var body: some View {
        VStack (spacing: 0){
            NavigationBarView()
                .padding(.horizontal, 15)
                .padding(.bottom)
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
            Spacer()
            FooterView()
                .padding(.horizontal)
        }
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    }
}

#Preview {
    ContentView()
}
