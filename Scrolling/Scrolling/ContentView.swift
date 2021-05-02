//
//  ContentView.swift
//  Scrolling
//
//  Created by Luciano Nicolini on 13/10/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}


struct Home: View {
    private var numerodeimagenes = 5
    private var timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    //
    @State private var currentIndex = 0
    
    func previous() {
        withAnimation {
        currentIndex = currentIndex > 0 ? currentIndex - 1: numerodeimagenes - 1
     }
    }
    func next() {
        withAnimation {
        currentIndex = currentIndex < numerodeimagenes ? currentIndex + 1 : 0
        }
    }
    
    var control: some View {
        HStack {
            Button {
                previous()
               
                
            } label: {
                Image(systemName: "chevron.left")
            }
            
            Button {
               next()
                
                
            } label: {
                Image(systemName: "chevron.right")
            }
        }
    }
    
    
    
    
    var body: some View {
        GeometryReader { geo in
            VStack {
            TabView(selection: $currentIndex) {
                ForEach(0..<numerodeimagenes) { num in
                    Image("\(num)")
                        .resizable()
                        .scaledToFill()
                        .overlay(Color.black.opacity(0.4))
                        .tag(num)
                }
                
            }.tabViewStyle(PageTabViewStyle())
            .clipShape(RoundedRectangle(cornerRadius: 5))
            .padding()
            .frame(width: geo.size.width, height: geo.size.height / 3)
    
            .onReceive(timer, perform: { _ in
               next()
                })
                control
            
            }
            
        }
        
    }
}

