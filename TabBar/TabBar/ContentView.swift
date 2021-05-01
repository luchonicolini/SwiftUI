//
//  ContentView.swift
//  TabBar
//
//  Created by Luciano Nicolini on 15/10/2020.
//

import SwiftUI

struct ContentView: View {
@State var index = 0
    var body: some View {
        VStack {
            Spacer()
            customTabs(index: self.$index)
            
        }
        .background(Color.black.opacity(0.05)).edgesIgnoringSafeArea(.top)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct customTabs:View {
    @Binding var index : Int
    var body: some View {
        HStack {
            Button(action: {
                self.index = 0
                
            }) {
                Image("p2")
            }
            .foregroundColor(Color.black.opacity(self.index == 0 ? 1 : 0.2))
            Spacer(minLength: 0)
            Button(action: {
                self.index = 1
                
            }) {
                Image("p2")
            }
            .foregroundColor(Color.black.opacity(self.index == 1 ? 1 : 0.2))
            .offset(x:10)
            Spacer(minLength: 0)
            
            Button(action:  {
                
            }) {
                Image("p1").renderingMode(.original)
            }
            
            
            Spacer(minLength: 0)
            
            Button(action: {
                self.index = 2
                
            }) {
                Image("p2")
            }
            .foregroundColor(Color.black.opacity(self.index == 2 ? 1 : 0.2))
            .offset(x:-10)
            Spacer(minLength: 0)
            Button(action: {
                self.index = 3
                
            }) {
                Image("p2")
                
            }
            .foregroundColor(Color.black.opacity(self.index == 3 ? 1 : 0.2))
        }
        .padding(.horizontal,35)
        .background(Color.white)
    }
}

