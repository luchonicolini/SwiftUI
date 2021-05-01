//
//  ContentView.swift
//  WebPage
//
//  Created by Luciano Nicolini on 10/11/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ViewwWeb(url: "https://www.netflix.com/browse")
                .edgesIgnoringSafeArea(.all)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
