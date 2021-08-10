//
//  prueba.swift
//  iosfa_app
//
//  Created by Luciano Nicolini on 25/06/2021.
//

import SwiftUI

struct FFFView: View {
    var drink:Drink
    var body: some View {
        VStack(alignment: .leading) {
            Text("Comodidades")
                .font(.system(size: 22, weight: .medium, design: .rounded))
            
            
            HStack(spacing:20) {
                    Card1(drink: drink)
                    Card2(drink: drink)
                    Card3(drink: drink)
                }
            }
        }
    }

struct FFFView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FFFView(drink: drinkData[3])
        }
    }
}





struct Card1: View {
    var drink:Drink
    var body: some View {
        ZStack {
            VStack {
                Text("")
            }
            .frame(width: 90, height: 140)
            .background(Color.red)
            .offset(y:8)
            .cornerRadius(20)
            .shadow(color: Color(.black).opacity(0.2), radius: 20, x: 0, y: 20)
            
            VStack {
                Image(drink.imageName)
                    .resizable()
                    .frame(width: 50, height: 50)
                Text("1")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .padding(.top,10)
            }
            .frame(width: 100, height: 140)
            .background(Color.white)
            .cornerRadius(20)
            
            
        }
    }
}

struct Card2: View {
    var drink:Drink
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.gray)
            VStack {
                Image(drink.imageName)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(20)
                Text("2")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .padding(.top,8)
                
            }
            
        }
        .frame(width: 100, height: 140)
    }
}


struct Card3: View {
    var drink:Drink
    var body: some View {
        ZStack {
            VStack {
                Text("")
            }
            .frame(width: 90, height: 140)
            .background(Color.white)
            .offset(y:8)
            .cornerRadius(20)
            .shadow(color: Color(.black).opacity(0.2), radius: 20, x: 0, y: 20)
            
            VStack {
                Image(drink.imageName)
                    .resizable()
                    .frame(width: 50, height: 50)
                Text("3")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .padding(.top,10)
            }
            .frame(width: 100, height: 140)
            .background(Color.white)
            .cornerRadius(20)
            
            
        }
    }
}
