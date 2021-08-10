//
//  DetaillView.swift
//  Project
//
//  Created by Luciano Nicolini on 05/08/2021.
//

import SwiftUI

struct DetaillView: View {
    
    let player: Player
    
    var body: some View {
        ScrollView {
            //imageview
            GeometryReader { geometry in
                ZStack {
                    if geometry.frame(in: .global).minY <= 0 {
                        Image(player.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(y: geometry.frame(in: .global).minY/9)
                        .clipped()
                    } else {
                        Image(player.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geometry.size.width, height: geometry.size.height + geometry.frame(in: .global).minY)
                            .clipped()
                            .offset(y: -geometry.frame(in: .global).minY)
                    }
                }
            }
                .frame(height: 400)
            VStack(alignment: .leading) {
             
                Text("Lorem ipsum dolor sit amet")
                    .font(.custom("AvenirNext-Bold", size: 30))
                    .lineLimit(nil)
                    .padding(.top, 10)
              
                VStack(alignment:.leading, spacing: 12) {
                    Image(systemName: "star.fill")
                        .font(.body)
                        .foregroundColor(Color.yellow)
                }
                
                Text("3 min read • 22. November 2019")
                    .font(.custom("AvenirNext-Regular", size: 15))
                    .foregroundColor(.gray)
                    .padding(.top, 10)
                
                
                
                Text("player.description")
                    .font(.custom("AvenirNext-Regular", size: 20))
                    .lineLimit(nil)
                    .padding(.top, 30)
            }
                .frame(width: 350)
        }
            .edgesIgnoringSafeArea(.top)
    }
}

struct DetaillView_Previews: PreviewProvider {
    static var previews: some View {
        DetaillView(player: players[3])
    }
}

