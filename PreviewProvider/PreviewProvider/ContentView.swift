//
//  ContentView.swift
//  PreviewProvider
//
//  Created by Luciano Nicolini on 02/05/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        home()
      
        }
    }
 
//1
struct home: View {
    var body: some View {
        ScrollView {
            HStack(spacing:16) {
                VStack {
                    ForEach(Array(leftCards.enumerated()), id: \.element) { offset, card in
                        CardView(card:card)
                            .frame(height: offset % 2 == 0 ? 320 : 200)
                    }
                }
                VStack {
                    ForEach(Array(rightCards.enumerated()), id: \.element) { offset, card in
                        CardView(card:card)
                            .frame(height: offset % 2 != 0 ? 320 : 200)
                    }
                }
            }.padding()
        }.navigationTitle("Categoria")
        .navigationBarItems(leading: Button {
            
        } label: {
            Image(systemName: "arrow.backward")
        }, trailing: Button {
            
        } label: {
            Image(systemName: "magnifyingglass")
        })
    }
}


    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                ContentView()
            }.accentColor(.primary)
        }
    }
