//
//  CardItem.swift
//  CardItem
//
//  Created by Luciano Nicolini on 10/09/2021.
//

import SwiftUI

struct CardItem: View {
    
    var cardate:Card
    
    var body: some View {
        VStack(alignment: .leading,spacing: 16.0) {
            
            Text("\(cardate.subtilte)")
                .font(.system(size: 23, weight: .medium, design: .rounded)).bold()
                .foregroundColor(Color.orange)
            
            
            //
            Image(cardate.image).resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode:.fill)
                .frame(width:320,height:250)
                .cornerRadius(10)
                .shadow(radius: 10)
            VStack(alignment: .leading){
                Text("\(cardate.tilte)")
                    .font(.system(size: 20, weight: .medium, design: .rounded))
                    .foregroundColor(Color.black)
                
                Text(cardate.name)
                    .font(.custom("AvenirNext-Regular", size: 14))
                    .multilineTextAlignment(.leading)
                    .lineLimit(3).frame(height:40)
                    .foregroundColor(.primary)
                    .padding(.top,-10)
                
            }
            Divider()
        }
        .padding()
     
    }
}

struct CardItem_Previews: PreviewProvider {
    static var previews: some View {
        CardItem(cardate: CardData[0])
    }
}
