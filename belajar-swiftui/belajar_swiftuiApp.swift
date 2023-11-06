//
//  belajar_swiftuiApp.swift
//  belajar-swiftui
//
//  Created by lukmanma on 10/10/23.
//

import SwiftUI

@main
struct belajar_swiftuiApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                MainPage()
                    .environmentObject(modelData)
            }
        }
    }
}
