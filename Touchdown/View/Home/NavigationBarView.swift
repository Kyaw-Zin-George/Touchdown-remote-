//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/14/25.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        HStack{
            Button(action:{}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundStyle(.black)
            })
            Spacer()
            Button(action:{}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundStyle(.black)
            })
        }
    }
}

#Preview {
    NavigationBarView()
}
