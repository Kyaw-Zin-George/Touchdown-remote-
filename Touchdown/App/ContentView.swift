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
        VStack {
            FooterView()
                .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
