//
//  CardView.swift
//  iosfa_app
//
//  Created by Luciano Nicolini on 01/07/2021.
//

import SwiftUI

struct CardView: View {
        
    var drink:Drink
        
    var body: some View {
        
        VStack {
            
            Image(drink.imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
                .padding(.bottom)
            
            
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                
                    Text(drink.name)
                    .font(.title)
                    .fontWeight(.black)
                
                Text("kkkkkk")
                    .font(.headline)
                    .fontWeight(.bold)
                
                    Text(drink.description)
                    .foregroundColor(.secondary)
                   .lineLimit(3)
                
                }.layoutPriority(100)
                
                Spacer()
            }.padding()
            
        }
    .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 1))
        .padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(drink: drinkData[0])
    }
}
