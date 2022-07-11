//
//  ContentView.swift
//  Shared
//
//  Created by Luciano Nicolini on 10/07/2022.
//

import SwiftUI

struct ContentView: View {
   // var videogame: [VideoGame] = []
   //@StateObject private var store = VideoGameStore()
   @ObservedObject var store: VideoGameStore
    
    var body: some View {
        NavigationView {
            List {
                ForEach(store.videogames) { index in
                    VideoGameCell(videogame: index)
                }
                
                HStack {
                    Spacer()
                    Text("\(store.videogames.count) Video Game")
                        .foregroundColor(.secondary)
                    Spacer()
                }
                
        
            }
            .listStyle(.inset)
            .navigationTitle("Video Game")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: TestStore)
            
    }
}

struct VideoGameCell: View {
    var videogame: VideoGame
    
    var body: some View {
        NavigationLink(destination: SecundaryGame(videogame: videogame)) {
            Image(videogame.imageName)
                .resizable()
                .frame(width: 80, height: 80)
                .cornerRadius(8)
            VStack(alignment: .leading) {
                Text(videogame.name)
                Text(videogame.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
            }
        }
    }
}
