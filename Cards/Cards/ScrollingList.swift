//
//  ScrollingList.swift
//  Cards
//
//  Created by Luciano Nicolini on 09/05/2021.
//

import SwiftUI

struct Box {
    var id: Int
    var tilte, ImageUrl : String
}

struct ScrollingList: View {
    let boxes:[Box] = [
        Box(id: 1, tilte: "", ImageUrl: "1"),
        Box(id: 2, tilte: "", ImageUrl: "2"),
        Box(id: 3, tilte: "", ImageUrl: "3")
    ]
   
    var body: some View {
        NavigationView {
            ScrollView {
                HStack() {
                  
                }
            }.padding()
            
        }.navigationTitle(Text("Tech posts!"))
    }
}

struct BoxView: View {
    let box: Box

    var body: some View {
        VStack {
            Image("\(box.ImageUrl)")
                .resizable()
                .frame(width: 80, height: 80)
                .cornerRadius(12)
            Text(box.tilte)
                .font(.subheadline)
                .fontWeight(.bold)
        }
    }
}



struct ScrollingList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingList()
    }
}
