//
//  ContentView.swift
//  Cards
//
//  Created by Luciano Nicolini on 08/05/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Cards()
    }
}


class SelectedObject: ObservableObject {
    @Published var isShowing = false
    @Published var name = ""
}



struct Cards: View {
    @Namespace var animation
    @StateObject var selectedObject = SelectedObject()
   
    var body: some View {
        ZStack {
            TabView {
                TodayView(animation: animation)
                    .environmentObject(selectedObject)
                //TabItem1
                    .tabItem { Label(
                        title: { Text("Home")},
                        icon: { Image(systemName: "house") }
                    )}
                //TabItem2
                Text("Perfect")
                    .tabItem { Label(
                        title: { Text("Perfecrences")},
                        icon: { Image(systemName: "gear") }
                    )}
            }
            if selectedObject.isShowing {
                DetailView(animation: animation)
                    .environmentObject(selectedObject)
                    .zIndex(2.0)
            }
        }
        
    }
}



