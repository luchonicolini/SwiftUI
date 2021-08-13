//
//  ContentView.swift
//  Shared
//
//  Created by Luciano Nicolini on 13/08/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
   
    var body: some View {
        TabView(selection: $selection){
            Categories()
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "globe")
                        Text("Categories") // Update tab title
                    }
            }
            .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Profile") // Update tab title
                    }
            }
            .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
