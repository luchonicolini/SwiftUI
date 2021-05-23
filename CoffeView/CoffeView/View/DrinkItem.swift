//
//  DrinkItem.swift
//  CoffeView
//
//  Created by Luciano Nicolini on 23/05/2021.
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
                .font(.headline)
                .foregroundColor(.primary)
            Text(drink.description)
                .font(.subheadline)
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
    }
}
