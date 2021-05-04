//
//  Cards.swift
//  PreviewProvider
//
//  Created by Luciano Nicolini on 03/05/2021.
//

import Foundation
import SwiftUI

// 2cards
struct Card: Hashable {
    let title:String
    let imageName:String
}

 //3
let leftCards: [Card] = [
    .init(title: "Kick Boxing",
          imageName: "box1"),
    .init(title: "Boxing",
          imageName: "box2"),
    .init(title: "Morning",
          imageName: "pinguino"),
    .init(title: "Fitness",
          imageName: "box1")
]

let rightCards: [Card] = [
    .init(title: "Pilates",
          imageName: "box2"),
    .init(title: "Intervals",
          imageName: "pinguino"),
    .init(title: "Yoga",
          imageName: "box1"),
    .init(title: "Run",
          imageName: "pinguino")
]




//4 cardsView // image and texto
struct CardView: View {
    let card : Card
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                Image(card.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: proxy.size.width,
                           height: proxy.size.height)
                    .clipped()
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10).fill(Color.gray).opacity(0.2))
                Text(card.title.uppercased())
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(8)
                    .foregroundColor(Color.white)
            }
            
        }
        
    }
}
