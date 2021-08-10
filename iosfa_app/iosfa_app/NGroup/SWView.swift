//
//  SWView.swift
//  iosfa_app

//.previewLayout(.sizeThatFits)
//.padding()
//  Created by Luciano Nicolini on 21/06/2021.
//

import SwiftUI

struct DrinkItem: View {
    
    var drink:Drink
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(drink.imageName).resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode:.fill)
                .frame(width:300,height:170)
                .cornerRadius(5)
                .shadow(radius: 10)
        VStack(){
            Text(drink.name)
                .font(.system(size: 25, weight: .medium, design: .rounded))
                .foregroundColor(.primary)
            Text(drink.description)
                .font(.custom("AvenirNext-Regular", size: 18))
                .multilineTextAlignment(.leading)
                .lineLimit(2).frame(height:40)
                .foregroundColor(.primary)
            }
        }
    }
}

struct DrinkItem_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItem(drink: drinkData[0])
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
