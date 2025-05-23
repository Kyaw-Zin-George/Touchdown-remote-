//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/14/25.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - Properties
    @State private var isAnimated: Bool = false
    //MARK: - Body
    var body: some View {
        HStack{
            Button(action:{}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundStyle(.black)
            })
            Spacer()
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x:0, y: isAnimated ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)){
                        isAnimated.toggle()
                    }
                }
            Spacer()
            ZStack {
                Button(action:{}, label: {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundStyle(.black)
                })
                Circle()
                    .fill(Color.red)
                    .frame(width: 13, height: 13)
                    .offset(x:13,y: -10)
            }//ZStack
        }
    }
}

#Preview {
    NavigationBarView()
}
