//
//  DefinitivoApp.swift
//  Shared
//
//  Created by Luciano Nicolini on 09/12/2021.
//

import SwiftUI

@main
struct DefinitivoApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
