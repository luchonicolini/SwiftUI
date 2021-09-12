//
//  ProjectApp.swift
//  Shared
//
//  Created by Luciano Nicolini on 31/08/2021.
//

import SwiftUI

@main
struct ProjectApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
