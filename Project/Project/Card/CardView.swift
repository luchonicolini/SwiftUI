//
//  CardView.swift
//  Project
//
//  Created by Luciano Nicolini on 05/08/2021.
//

import SwiftUI

struct CardView: View {
    let player: Player
   
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(player.imageName).resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode:.fill)
                .frame(width:320,height:250)
                .cornerRadius(10)
                .shadow(radius: 10)
            VStack(alignment: .leading){
            Text(player.name)
                .font(.system(size: 25, weight: .medium, design: .rounded))
                .foregroundColor(.primary)
            Text(player.minidescrpition)
                .font(.custom("AvenirNext-Regular", size: 18))
                .multilineTextAlignment(.leading)
                .lineLimit(2).frame(height:40)
                .foregroundColor(.primary)
            }
        }
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
