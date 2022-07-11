//
//  VideoGameApp.swift
//  Shared
//
//  Created by Luciano Nicolini on 10/07/2022.
//

import SwiftUI

@main
struct VideoGameApp: App {
    @StateObject private var store = VideoGameStore()
    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}
