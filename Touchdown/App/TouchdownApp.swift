//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Kyaw Thant Zin(George) on 4/10/25.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
